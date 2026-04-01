import time, requests, os, sys
from rich.live import Live
from rich.table import Table
from rich.panel import Panel
from rich.console import Console
from datetime import datetime, timedelta

# --- [ إعدادات EXCORA PRO ] ---
PASSWORD = "SAMER" 
PAIRS = ["BTCUSDT", "SOLUSDT", "ETHUSDT", "BNBUSDT", "ADAUSDT", "XRPUSDT"]
LOG_FILE = "trades_log.txt"
console = Console()

# --- [ محرك البيانات والتحليل ] ---
history = {p: [] for p in PAIRS}
last_signals = {p: "Neutral" for p in PAIRS}

def login():
    os.system('clear')
    console.print(Panel.fit("[bold cyan]EXCORA PRO v2.0 - TRADINGVIEW MODE[/]\n[white]Developed for Samer Salman[/]", border_style="bright_blue"))
    attempt = console.input("[bold yellow]🔑 ENTER ACCESS KEY: [/]")
    if attempt != PASSWORD:
        console.print("[bold red]❌ ACCESS DENIED![/]")
        sys.exit()
    console.print("[bold green]✅ SYSTEM ONLINE...[/]")
    time.sleep(1)

def log_trade(symbol, signal, price):
    with open(LOG_FILE, "a") as f:
        dt = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        f.write(f"[{dt}] {symbol} | {signal} | @ ${price:,.2f}\n")

def get_live_data(symbol):
    try:
        # جلب بيانات الشموع (1H)
        url = f"https://api.binance.com/api/v3/klines?symbol={symbol}&interval=1h&limit=3"
        res = requests.get(url, timeout=8).json()
        
        c1_h, c1_l = float(res[0][2]), float(res[0][3])
        c3_h, c3_l = float(res[2][2]), float(res[2][3])
        price = float(res[2][4])
        
        # تحديث الرسم البياني النبضي
        history[symbol].append(price)
        if len(history[symbol]) > 12: history[symbol].pop(0)
        
        sig_text, sig_display = "Neutral", "[cyan]Neutral[/]"
        if c3_l > c1_h:
            sig_text, sig_display = "BUY", "[bold green]📈 BUY FVG[/]"
        elif c3_h < c1_l:
            sig_text, sig_display = "SELL", "[bold magenta]📉 SELL FVG[/]"
            
        # نظام التنبيه الذكي
        if sig_text != "Neutral" and last_signals[symbol] != sig_text:
            os.system("echo -e '\a'") # Beep
            log_trade(symbol, sig_text, price)
            last_signals[symbol] = sig_text
            
        return price, sig_display
    except:
        return 0.0, "[red]Sync Error[/]"

def draw_spark(data):
    if len(data) < 2: return "──"
    chars = " ▂▃▄▅▆▇█"
    mi, ma = min(data), max(data)
    if mi == ma: return "──"
    return "".join([chars[int((v - mi) / (ma - mi) * 7)] for v in data])

def get_timer():
    now = datetime.now()
    remaining = (now + timedelta(hours=1)).replace(minute=0, second=0, microsecond=0) - now
    return f"{remaining.seconds // 60:02d}:{remaining.seconds % 60:02d}"

def generate_ui():
    table = Table(expand=True, border_style="bright_blue", box=None, padding=(0, 1))
    table.add_column("Asset", style="bold white")
    table.add_column("Price (USDT)", justify="right", style="bold yellow")
    table.add_column("Trend (Live)", justify="center", style="bright_green")
    table.add_column("SMC Analysis", justify="center")
    
    for p in PAIRS:
        price, sig = get_live_data(p)
        table.add_row(p, f"${price:,.2f}", draw_spark(history[p]), sig)
        
    return Panel(
        table,
        title="[bold white]EXCORA PRO - INSTITUTIONAL TERMINAL[/]",
        subtitle=f"[bold cyan]CANDLE CLOSE: [blink]{get_timer()}[/] | {datetime.now().strftime('%H:%M:%S')}[/]",
        border_style="bright_blue"
    )

if __name__ == "__main__":
    login()
    try:
        with Live(generate_ui(), refresh_per_second=1, screen=True) as live:
            while True:
                live.update(generate_ui())
                time.sleep(2)
    except KeyboardInterrupt:
        console.print("\n[bold red][!] System Terminated Safely.[/]")
