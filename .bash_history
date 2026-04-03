    pen.closePath()

def draw_beh_base(pen, thick):
    w = 600
    pen.moveTo((50, 200)); pen.lineTo((50, 0)); pen.lineTo((50 + w, 0)); pen.lineTo((50 + w, 200))
    pen.lineTo((50 + w - thick, 200)); pen.lineTo((50 + w - thick, thick))
    pen.lineTo((50 + thick, thick)); pen.lineTo((50 + thick, 200))
    pen.closePath()

def create_font_variant(name, thick):
    fb = FontBuilder(1000, isTTF=True)
    glyphs = {".notdef": TTGlyphPen(None).getGlyph()}
    cmap = {}
    for g_name, func, code in [("alef-ar", draw_alef, 0x0627), ("beh-ar", draw_beh_base, 0x0628)]:
        pen = TTGlyphPen(None)
        func(pen, thick)
        glyphs[g_name] = pen.getGlyph()
        cmap[code] = g_name
    dot_pen = TTGlyphPen(None)
    draw_dot(dot_pen, 300, -150, thick)
    glyphs["dot-ar"] = dot_pen.getGlyph()
    fb.setupGlyphOrder(list(glyphs.keys()))
    fb.setupGlyf(glyphs)
    fb.setupCharacterMap(cmap)
    fb.setupNameTable({"familyName": "ExcorArabic", "styleName": name})
    fb.setupOS2(sTypoAscender=750, usWinAscent=900, usWinDescent=400)
    fb.setupPost()
    os.makedirs("builds", exist_ok=True)
    fb.save(f"builds/ExcorArabic-{name}.ttf")
    print(f"✅ Created: {name}")

if __name__ == "__main__":
    weights = {"Light": 30, "Regular": 70, "Medium": 110, "Bold": 170}
    for n, t in weights.items():
        create_font_variant(n, t)
EOF

# تشغيل البناء
python build_masters.py
# ستظهر لك رسائل النجاح للأوزان الأربعة ✅
git add .
git commit -m "Relocated project to Termux home and fixed builder script"
git push
cat <<EOF > build_masters.py
import os
from fontTools.fontBuilder import FontBuilder
from fontTools.pens.ttGlyphPen import TTGlyphPen

def draw_dot(pen, x, y, thick):
    size = thick * 1.2
    pen.moveTo((x, y))
    pen.lineTo((x + size, y))
    pen.lineTo((x + size, y + size))
    pen.lineTo((x, y + size))
    pen.closePath()

def draw_alef(pen, thick):
    pen.moveTo((100, 0)); pen.lineTo((100, 700))
    pen.lineTo((100 + thick, 700)); pen.lineTo((100 + thick, 0))
    pen.closePath()

def draw_beh_base(pen, thick):
    w = 600
    pen.moveTo((50, 200)); pen.lineTo((50, 0)); pen.lineTo((50 + w, 0)); pen.lineTo((50 + w, 200))
    pen.lineTo((50 + w - thick, 200)); pen.lineTo((50 + w - thick, thick))
    pen.lineTo((50 + thick, thick)); pen.lineTo((50 + thick, 200))
    pen.closePath()

def create_font_variant(name, thick):
    fb = FontBuilder(1000, isTTF=True)
    
    # تصحيح دالة الحصول على الجليف: glyph() بدلاً من getGlyph()
    glyphs = {".notdef": TTGlyphPen(None).glyph()}
    cmap = {}
    
    for g_name, func, code in [("alef-ar", draw_alef, 0x0627), ("beh-ar", draw_beh_base, 0x0628)]:
        pen = TTGlyphPen(None)
        func(pen, thick)
        glyphs[g_name] = pen.glyph()
        cmap[code] = g_name

    dot_pen = TTGlyphPen(None)
    draw_dot(dot_pen, 300, -150, thick)
    glyphs["dot-ar"] = dot_pen.glyph()

    fb.setupGlyphOrder(list(glyphs.keys()))
    fb.setupGlyf(glyphs)
    fb.setupCharacterMap(cmap)
    fb.setupNameTable({"familyName": "ExcorArabic", "styleName": name})
    fb.setupOS2(sTypoAscender=750, usWinAscent=900, usWinDescent=400)
    fb.setupPost()
    
    os.makedirs("builds", exist_ok=True)
    fb.save(f"builds/ExcorArabic-{name}.ttf")
    print(f"✅ تم بناء الوزن: {name}")

if __name__ == "__main__":
    weights = {"Light": 30, "Regular": 70, "Medium": 110, "Bold": 170}
    for n, t in weights.items():
        create_font_variant(n, t)
EOF

# تشغيل بناء الخطوط
python build_masters.py
# رفع التعديلات النهائية إلى GitHub
git add build_masters.py
git commit -m "Fix: correct glyph() method in build script"
git push
import os
from fontTools.fontBuilder import FontBuilder
from fontTools.pens.ttGlyphPen import TTGlyphPen
def draw_dot(pen, x, y, thick):
if __name__ == "__main__":;     weights = {"Light": 30, "Regular": 70, "Medium": 110, "Bold": 170};     for n, t in weights.items():
cat <<EOF > build_masters.py
import os
from fontTools.fontBuilder import FontBuilder
from fontTools.pens.ttGlyphPen import TTGlyphPen

def draw_dot(pen, x, y, thick):
    size = thick * 1.2
    pen.moveTo((x, y)); pen.lineTo((x + size, y))
    pen.lineTo((x + size, y + size)); pen.lineTo((x, y + size))
    pen.closePath()

def draw_alef(pen, thick):
    pen.moveTo((100, 0)); pen.lineTo((100, 700))
    pen.lineTo((100 + thick, 700)); pen.lineTo((100 + thick, 0))
    pen.closePath()

def draw_beh_base(pen, thick):
    w = 600
    pen.moveTo((50, 200)); pen.lineTo((50, 0)); pen.lineTo((50 + w, 0)); pen.lineTo((50 + w, 200))
    pen.lineTo((50 + w - thick, 200)); pen.lineTo((50 + w - thick, thick))
    pen.lineTo((50 + thick, thick)); pen.lineTo((50 + thick, 200))
    pen.closePath()

def create_font_variant(name, thick):
    fb = FontBuilder(1000, isTTF=True)
    glyphs = {".notdef": TTGlyphPen(None).glyph()}
    cmap = {}
    metrics = {".notdef": (0, 0)}
    for g_name, func, code in [("alef-ar", draw_alef, 0x0627), ("beh-ar", draw_beh_base, 0x0628)]:
        pen = TTGlyphPen(None)
        func(pen, thick)
        glyphs[g_name] = pen.glyph()
        cmap[code] = g_name
        metrics[g_name] = (800, 100)
    dot_pen = TTGlyphPen(None)
    draw_dot(dot_pen, 300, -150, thick)
    glyphs["dot-ar"] = dot_pen.glyph()
    metrics["dot-ar"] = (0, 0)
    fb.setupGlyphOrder(list(glyphs.keys()))
    fb.setupGlyf(glyphs)
    fb.setupCharacterMap(cmap)
    fb.setupHorizontalMetrics(metrics)
    fb.setupNameTable({"familyName": "ExcorArabic", "styleName": name})
    fb.setupOS2(sTypoAscender=750, usWinAscent=900, usWinDescent=400)
    fb.setupPost()
    os.makedirs("builds", exist_ok=True)
    fb.save(f"builds/ExcorArabic-{name}.ttf")
    print(f"✅ تم بناء الوزن: {name}")

if __name__ == "__main__":
    weights = {"Light": 30, "Regular": 70, "Medium": 110, "Bold": 170}
    for n, t in weights.items():
        create_font_variant(n, t)
EOF

python build_masters.py
git add build_masters.py
git commit -m "Fix: correctly formatted build script"
git push
cat <<EOF > build_masters.py
import os
from fontTools.fontBuilder import FontBuilder
from fontTools.pens.ttGlyphPen import TTGlyphPen

# --- دالات الرسم الهندسي ---
def draw_dot(pen, x, y, thick):
    size = thick * 1.3
    pen.moveTo((x, y)); pen.lineTo((x + size, y))
    pen.lineTo((x + size, y + size)); pen.lineTo((x, y + size))
    pen.closePath()

def draw_alef(pen, thick):
    pen.moveTo((100, 0)); pen.lineTo((100, 750))
    pen.lineTo((100 + thick, 750)); pen.lineTo((100 + thick, 0))
    pen.closePath()

def draw_beh_base(pen, thick):
    w = 650
    pen.moveTo((50, 200)); pen.lineTo((50, 0)); pen.lineTo((50 + w, 0)); pen.lineTo((50 + w, 200))
    pen.lineTo((50 + w - thick, 200)); pen.lineTo((50 + w - thick, thick))
    pen.lineTo((50 + thick, thick)); pen.lineTo((50 + thick, 200))
    pen.closePath()

def draw_noon_base(pen, thick):
    # رسم منحنى النون باستخدام Quadratic Bezier لجمالية احترافية
    pen.moveTo((100, 300))
    pen.qCurveTo((100, -150), (400, -150), (700, 300))
    pen.lineTo((700 - thick, 300))
    pen.qCurveTo((400, -150 + thick), (100 + thick, 300))
    pen.closePath()

# --- المحرك الرئيسي ---
def create_font_variant(name, thick):
    fb = FontBuilder(1000, isTTF=True)
    glyphs = {".notdef": TTGlyphPen(None).glyph()}
    cmap = {}
    metrics = {".notdef": (0, 0)}

    # مصفوفة الحروف الكاملة
    char_map = [
        ("alef-ar", draw_alef, 0x0627, 850),
        ("beh-ar", draw_beh_base, 0x0628, 850),
        ("noon-ar", draw_noon_base, 0x0646, 850)
    ]

    for g_name, func, code, width in char_map:
        pen = TTGlyphPen(None)
        func(pen, thick)
        glyphs[g_name] = pen.glyph()
        cmap[code] = g_name
        metrics[g_name] = (width, 100)

    # إضافة النقاط (مثال لنقطة الباء)
    dot_pen = TTGlyphPen(None)
    draw_dot(dot_pen, 300, -180, thick)
    glyphs["dot-ar"] = dot_pen.glyph()
    metrics["dot-ar"] = (0, 0)

    # الترتيب الصحيح للجداول (Crucial Fix)
    fb.setupGlyphOrder(list(glyphs.keys()))
    fb.setupGlyf(glyphs)
    fb.setupCharacterMap(cmap)
    fb.setupHorizontalMetrics(metrics) # يجب أن يسبق OS/2
    
    fb.setupNameTable({
        "familyName": "ExcorArabic",
        "styleName": name,
        "uniqueFontIdentifier": f"ExcorArabic-{name}",
        "fullName": f"ExcorArabic {name}",
        "psName": f"ExcorArabic-{name}"
    })
    
    fb.setupOS2(sTypoAscender=750, usWinAscent=950, usWinDescent=450)
    fb.setupPost()
    
    os.makedirs("builds", exist_ok=True)
    fb.save(f"builds/ExcorArabic-{name}.ttf")
    print(f"✅ تم بنجاح تصدير الوزن: {name}")

if __name__ == "__main__":
    # الأوزان الأربعة القياسية
    weights = {"Light": 35, "Regular": 75, "Medium": 120, "Bold": 180}
    for n, t in weights.items():
        create_font_variant(n, t)
EOF

# 1. بناء ملفات الـ TTF للأوزان الأربعة
python build_masters.py
# 2. رفع النسخة النهائية والمستقرة إلى GitHub
git add build_masters.py
git commit -m "Final build engine: Added curves support and fixed table sequencing"
git push
ls ~/ExcorArabicFont/builds
cd ~/ExcorArabicFont
ls
ls builds/
pkg install rclone
rclone config
# هذا الأمر سينشئ مجلدًا في درايف باسم ExcorProject وينقل الخطوط إليه
rclone copy ~/ExcorArabicFont/builds GDrive:ExcorProject -P
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm
# مسار ملف الخط الذي صنعته
font_path = '/data/data/com.termux/files/home/ExcorArabicFont/builds/ExcorArabic-Bold.ttf'
prop = fm.FontProperties(fname=font_path)
plt.text(0.5, 0.5, 'أ ب ت ث ج ح خ', fontproperties=prop, fontsize=40, ha='center')
plt.show()
fc-query ~/ExcorArabicFont/builds/ExcorArabic-Bold.ttf | grep "fullname"
# لعرض معلومات تقنية عن ملف الخط الذي صنعته
fc-query ~/ExcorArabicFont/builds/ExcorArabic-Bold.ttf | grep "fullname"
pkg install fontconfig-utils
fc-query ~/ExcorArabicFont/builds/ExcorArabic-Bold.ttf | grep "fullname"
termux-setup-storage
cp -r ~/ExcorArabicFont/builds /sdcard/Download/ExcorFonts
rclone sync ~/ExcorArabicFont/builds GDrive:ExcorProject -P
gh auth login
Authenticate Git with your GitHub credentials
Authenticate Git
gh auth login
nano buildozer.spec
android.permissions = INTERNET, VIBRATE, WAKE_LOCK
pkg install binutils-is-llvm libcanvas-static zlib libjpeg-turbo -y
./build.sh
# حذف أي ملفات قديمة معطوبة
rm -rf .buildozer/
rm -rf bin/
# تثبيت المكتبات التي سببت لك الصداع (Zlib وغيرها) بأمر واحد
pkg update && pkg upgrade -y
pkg install clang python libffi openssl zlib libjpeg-turbo binutils ndk-sysroot -y
# حذف الملف القديم
rm buildozer.spec
# إنشاء ملف جديد
buildozer init
# أمر سحري لتعديل المتطلبات برمجياً (بدون دخول المحرر)
sed -i 's/requirements = python3,kivy/requirements = python3,kivy,kivymd,certifi,plyer,requests/g' buildozer.spec
cat main.py
buildozer -v android debug
pkg install libandroid-support-dev zlib-dev libjpeg-turbo-dev binutils -y
ln -s $PREFIX/include/zlib.h $PREFIX/include/zconf.h .
rm -rf .buildozer/android/platform/build-target
buildozer -v android debug
pkg install ndk-sysroot-gcc-compact libiconv libjpeg-turbo zlib -y
# إنشاء روابط لملفات zlib في مجلد المشروع
cp $PREFIX/include/zlib.h .
cp $PREFIX/include/zconf.h .
# إخبار النظام بمكان المكتبات أثناء البناء
export CFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
buildozer android clean
buildozer -v android debug
pkg update && pkg upgrade -y
pkg install clang python libffi openssl zlib libjpeg-turbo binutils ndk-sysroot ncurses-utils -y
# إنشاء روابط لملفات التطوير في المجلد الحالي لضمان رؤيتها
ln -s $PREFIX/include/zlib.h .
ln -s $PREFIX/include/zconf.h .
# تحديث أداة Buildozer نفسها لضمان التوافق مع Python 3.13
pip install --upgrade buildozer
# حذف الملف القديم تماماً لضمان عدم وجود أحرف مخفية
rm buildozer.spec
# إنشاء ملف جديد وافتراضي
buildozer init
# تعديل المتطلبات برمجياً لتشمل ما يحتاجه EXCORA PRO
sed -i 's/requirements = python3,kivy/requirements = python3,kivy,kivymd,certifi,plyer,requests/g' buildozer.spec
buildozer -v android debug
pkg install python-pip clang make binutils abc-path zlib zlib-static libjpeg-turbo ndk-sysroot -y
# إنشاء روابط في مسار النظام ليفهمها المترجم
cp $PREFIX/include/zlib.h $PREFIX/include/zconf.h .
export CPATH=$PREFIX/include
export LIBRARY_PATH=$PREFIX/lib
# تثبيت أدوات بناء متوافقة مع الأندرويد مباشرة
pkg install ndk-sysroot-gcc-compact -y
# تشغيل البناء مع تجاوز فحص النظام للمكتبات
export APP_ZLIB=1
buildozer -v android debug
pkg install android-tools -y
adb logcat *:S python:D
build.sh
git clone https://github.com/salmansamer827-cmyk/ExcorArabicFont.git
cd ExcorArabicFont
echo "buildozer -v android debug" > build.sh
chmod +x build.sh
./build.sh
nano main.py
[200~os
import certifi
from datetime import datetime, timedelta
from kivy.core.text import LabelBase
from kivy.core.clipboard import Clipboard
from kivy.utils import get_color_from_hex
from kivy.clock import Clock
from kivy.lang import Builder
from kivy.storage.jsonstore import JsonStore
from kivymd.app import MDApp
from kivymd.uix.snackbar import Snackbar
from kivymd.uix.dialog import MDDialog
from kivymd.uix.button import MDRaisedButton
from kivy.network.urlrequest import UrlRequest
from plyer import notification
# إعدادات الأمان والخطوط
os.environ['SSL_CERT_FILE'] = certifi.where()
try:
except:
# واجهة المستخدم بنمط Solana Dark
KV = '''
MDScreen:
    md_bg_color: get_color_from_hex("#0B0E11")
    MDBoxLayout:
        orientation: 'vertical'
        padding: "15dp"
        spacing: "10dp"

        MDBoxLayout:
            size_hint_y: None
            height: "50dp"
            MDLabel:
                text: "EXCORA PRO v1.0"
                font_name: "SamerArabic"
                theme_text_color: "Custom"
                text_color: get_color_from_hex("#00FFA3")
                font_style: "H5"
            MDSwitch:
                id: alert_switch
                active: True
                thumb_color_active: get_color_from_hex("#DC1FFF")

        ScrollView:
            MDBoxLayout:
                orientation: 'vertical'
                adaptive_height: True
                spacing: "15dp"
                padding: [0, "10dp"]

                # بطاقة BTC
                MDCard:
                    size_hint_y: None
                    height: "80dp"
                    md_bg_color: get_color_from_hex("#1E2329")
                    radius: [15,]
                    padding: "15dp"
                    MDLabel:
                        id: btc_price
                        text: "BTC: Loading..."
                        halign: "center"
                        font_style: "H6"
                        theme_text_color: "Custom"
                        text_color: "#FFFFFF"

                # بطاقة ETH
                MDCard:
                    size_hint_y: None
                    height: "80dp"
                    md_bg_color: get_color_from_hex("#1E2329")
                    radius: [15,]
                    padding: "15dp"
                    MDLabel:
                        id: eth_price
                        text: "ETH: Loading..."
                        halign: "center"
                        font_style: "H6"
                        theme_text_color: "Custom"
                        text_color: "#FFFFFF"

                # بطاقة SOL
                MDCard:
                    size_hint_y: None
                    height: "80dp"
                    md_bg_color: get_color_from_hex("#1E2329")
                    radius: [15,]
                    padding: "15dp"
                    MDLabel:
                        id: sol_price
                        text: "SOL: Loading..."
                        halign: "center"
                        font_style: "H6"
                        theme_text_color: "Custom"
                        text_color: get_color_from_hex("#00FFA3")

        MDLabel:
            id: trial_info
            text: "Checking License..."
            halign: "center"
            theme_text_color: "Hint"
            font_style: "Caption"

        MDBoxLayout:
            size_hint_y: None
            height: "50dp"
            spacing: "10dp"
            MDRaisedButton:
                text: "Copy USDT (TRC20)"
                font_name: "SamerArabic"
                md_bg_color: get_color_from_hex("#DC1FFF")
                on_release: app.copy_payment("USDT")
            MDRaisedButton:
                text: "Copy ZainCash"
                font_name: "SamerArabic"
                md_bg_color: get_color_from_hex("#00FFA3")
                text_color: [0,0,0,1]
                on_release: app.copy_payment("ZainCash")
'''
class ExcoraProApp(MDApp):
if __name__ == "__main__":;     ExcoraProApp().run()
nano main.py
# إنشاء الملف الافتراضي
buildozer init
nano buildozer.spec
adb logcat *:E | grep python
192.168.3.194:39009
393904
963928
adb pair 192.168.3.194:39883
379163
405914
import os
import shutil
# تحديد المجلد الحالي
project_path = os.getcwd()
# 1. قائمة الملفات والمجلدات التي يجب حذفها (الزائدة)
to_delete = [
]
# 2. البحث عن أي ملف APK قديم وحذفه
print("--- بدء عملية تنظيف مشروع EXCORA ---")
for item in os.listdir(project_path):
print("--- المشروع الآن نظيف وجاهز للرفع إلى Colab ---")
python
cd ~/ExcorArabicFont && rm -rf .buildozer/ bin/ __pycache__ *.apk EXCORA_LOG.txt EXCORA_ERROR.txt && mkdir -p assets/images assets/fonts && echo "--- تم تنظيف وترتيب مشروع EXCORA بنجاح ---"
adb logcat *:E
