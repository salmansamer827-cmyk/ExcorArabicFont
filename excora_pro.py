import time, requests, os, sys
from rich.live import Live
from rich.table import Table
from rich.panel import Panel
from rich.console import Console
from rich.layout import Layout
from datetime import datetime, timedelta

# --- [ إعدادات المشروع النهائية ] ---
PASSWORD = "SAMER" 
PAIRS = ["BTCUSDT", "SOLUSDT", "ETHUSDT", "BNBUSDT", "ADAUSDT", "XRPUSDT"]
LOG_FILE = "trades_log.txt"
console = Console()
history = {p: [] for p in PAIRS}
last_signals = {p: "Neutral" for p in PAIRS}

def login():
    os.system('clear')
    console.print(Panel.fit("[bold cyan]EXCORA PRO v3.5 - OFFICIAL RELEASE[/]\n[white]Created by Samer Salman - 2026[/]", border_style="bright_blue"))
    attempt = console.input("[bold yellow]🔑 ENTER ACCESS KEY: [/]")
    if attempt != PASSWORD:
        console.print("[bold red]❌ ACCESS DENIED![/]")
        sys.exit()
    console.print("[bold green]✅ SYSTEM ONLINE. LOADING MARKET DATA...[/]")
    time.sleep(1)

def get_market_data(symbol):
    try:
        # جلب بيانات السعر والتحليل (SMC + Chg%)
        url_ticker = f"https://api.binance.com/api/v3/ticker/24hr?symbol={symbol}"
        url_klines = f"https://api.binance.com/api/v3/klines?symbol={symbol}&interval=1h&limit=3"
        
        res_t = requests.get(url_ticker, timeout=5).json()
        res_k = requests.get(url_klines, timeout=5).json()
        
        price = float(res_t['lastPrice'])
        change = float(res_t['priceChangePercent'])
        
        # تحليل SMC FVG
        c1_h, c1_l = float(res_k[0][2]), float(res_k[0][3])
        c3_h, c3_l = float(res_k[2][2]), float(res_k[2][3])
        
        sig_text, sig_display = "Neutral", "[cyan]Neutral[/]"
        if c3_l > c1_h: sig_text, sig_display = "BUY", "[bold green]📈 BUY FVG[/]"
        elif c3_h < c1_l: sig_text, sig_display = "SELL", "[bold magenta]📉 SELL FVG[/]"
        
        if sig_text != "Neutral" and last_signals[symbol] != sig_text:
            os.system("echo -e '\a'") # صوت تنبيه
            with open(LOG_FILE, "a") as f:
                f.write(f"[{datetime.now().strftime('%H:%M')}] {symbol} | {sig_text} @ ${price:,.2f}\n")
            last_signals[symbol] = sig_text

        chart_link = f"https://www.tradingview.com/chart/?symbol=BINANCE:{symbol}"
        return price, f"{change:+.2f}%", sig_display, chart_link
    except:
        return 0.0, "0.0%", "[red]Offline[/]", "#"

def make_header():
    grid = Table.grid(expand=True)
    grid.add_column(justify="left", ratio=1)
    grid.add_column(justify="center", ratio=1)
    grid.add_column(justify="right", ratio=1)
    grid.add_row(" ☰  Watchlist", "[bold magenta]EXCORA PRO[/]", f"{datetime.now().strftime('%H:%M:%S')} ")
    return Panel(grid, style="on #131722", border_style="#2A2E39")

def make_watchlist():
    table = Table(expand=True, box=None, border_style="#2A2E39")
    table.add_column("Symbol", ratio=1.2)
    table.add_column("Price/Chg", justify="right", ratio=1)
    table.add_column("SMC Signal", justify="center", ratio=1.2)
    
    for p in PAIRS:
        price, change, signal, link = get_market_data(p)
        symbol_name = p.replace("USDT", "")
        icon = "🟠" if "BTC" in p else "🔵" if "ETH" in p else "🟣"
        
        table.add_row(f"{icon} [bold][link={link}]{symbol_name}[/link][/]", f"${price:,.2f}", signal)
        table.add_row(f"  [grey35][link={link}]{change} ↗[/link][/]", "", "") 
        
    return Panel(table, title="[bold white]Market Intelligence[/]", border_style="#2A2E39")

def generate_layout():
    layout = Layout()
    layout.split_column(Layout(name="header", size=3), Layout(name="main"))
    layout["main"].update(make_watchlist())
    layout["header"].update(make_header())
    return layout

if __name__ == "__main__":
    login()
    try:
        with Live(generate_layout(), refresh_per_second=1, screen=True) as live:
            while True:
                live.update(generate_layout())
                time.sleep(4)
    except KeyboardInterrupt:
        print("\n[!] Project EXCORA Shutdown.")
