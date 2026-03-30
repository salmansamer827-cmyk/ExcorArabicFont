import ccxt
import time
import requests

# --- إعداداتك الخاصة ---
TOKEN = "ضـع_تـوكـن_بـوتـك_هـنـا"
CHAT_ID = "ضـع_الأيـدي_الـخـاص_بـك"
SYMBOL = "BTC/USDT"

ex = ccxt.binance()

def send_alert(msg):
    url = f"https://api.telegram.org/bot{TOKEN}/sendMessage"
    try:
        requests.post(url, json={"chat_id": CHAT_ID, "text": msg, "parse_mode": "Markdown"})
    except:
        print("❌ فشل الإرسال")

print(f"🚀 تم تشغيل نظام EXCORA.. يراقب {SYMBOL}")

while True:
    try:
        # جلب البيانات كقوائم بسيطة لتجنب تعقيدات pandas
        data = ex.fetch_ohlcv(SYMBOL, timeframe='1h', limit=5)
        h1, l1 = data[-3][2], data[-3][3] # الشمعة الأولى
        h3, l3 = data[-1][2], data[-1][3] # الشمعة الثالثة
        
        msg = ""
        if h1 < l3:
            msg = f"🟢 *SMC Alert: Bullish FVG*\n📈 {SYMBOL}\n💰 السعر: {data[-1][4]}"
        elif l1 > h3:
            msg = f"🔴 *SMC Alert: Bearish FVG*\n📉 {SYMBOL}\n💰 السعر: {data[-1][4]}"
            
        if msg:
            print("🎯 تم العثور على فرصة!")
            send_alert(msg)
        else:
            print(f"⏳ {time.strftime('%H:%M:%S')} | فحص السوق.. هدوء")
            
        time.sleep(60) 
    except Exception as e:
        print(f"Error: {e}")
        time.sleep(10)
