git commit -m "Final fix for logo and paths"
git push origin master --force
cd ~/EXCORA
# تحديث الرابط في هاتفك ليكون مطابقاً للتوكن الجديد
git remote set-url origin https://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@github.com/salmansamer827-cmyk/EXCORA.git
# محاولة رفع الشعار مجدداً
git add .
git commit -m "Update assets"
git push origin master --force
cd ~/EXCORA
termux-setup-storage
mkdir -p assets/images
cp /sdcard/Download/1000018110.png assets/images/logo.png
ls assets/images
# 1. الدخول للمجلد الرئيسي
cd ~/EXCORA
# 2. إنشاء المجلدات الفرعية للأصول (Assets)
mkdir -p assets/images assets/fonts
# 3. نقل الشعار (The Crucial Step)
# افترضنا أن الشعار موجود في التحميلات واسمه 1000018110.png
cp /sdcard/Download/1000018110.png assets/images/logo.png
# 4. الرفع النهائي (تأكد من وجود الأنترنت)
git add .
git commit -m "UI: Final assets structure with official logo"
git push origin master --force
# 1. الدخول للمشروع
cd ~/EXCORA
# 2. حذف الملفات والمجلدات الزائدة أو التالفة التي ظهرت في LS سابقاً
rm -rf bin .buildozer storage test_Black.png test_font.py
# 3. إنشاء الهيكل الهرمي الجديد بنظافة
mkdir -p assets/images assets/fonts
# 4. نقل الشعار لمكانه الصحيح وتسميته logo.png
cp /sdcard/Download/1000018110.png assets/images/logo.png
# 5. نقل الخطوط العربية لمجلد fonts (إذا كانت في المجلد الرئيسي)
mv *.ttf assets/fonts/ 2>/dev/null
# 6. تحديث GitHub بالهيكل الجديد "النظيف"
git add .
git commit -m "Cleanup: Reorganized project structure and assets"
git push origin master --force
ls -R
# 1. الدخول للمجلد والتنظيف الشامل
cd ~/EXCORA
rm -rf bin .buildozer storage test_Black.png test_font.py
rm -rf downloads my_font_pack ExcorArabicFont SMC_Alerts_Bot
# 2. إنشاء الهيكل الهرمي الجديد
mkdir -p assets/images assets/fonts
# 3. ترتيب الصورة (الشعار الرسمي)
# تأكد من وجود ملف 1000018110.png في التحميلات
cp /sdcard/Download/1000018110.png assets/images/logo.png
# 4. نقل كافة الخطوط العربية لمكانها الجديد
mv *.ttf assets/fonts/ 2>/dev/null
# 5. حذف أي بقايا ملفات بايثون مكررة (اختياري)
# احتفظ فقط بـ main.py وما تحتاجه فعلياً
# الدخول للمجلد
cd ~/EXCORA
# حذف المجلدات والملفات الزائدة تماماً لتنظيف المشروع
rm -rf ExcorArabicFont SMC_Alerts_Bot bin .buildozer storage test_Black.png test_font.py downloads my_font_pack
# إعادة إنشاء الهيكل الهرمي بنظافة
mkdir -p assets/images assets/fonts
# نقل الشعار لمكانه الصحيح (تأكد من وجود الصورة في التحميلات)
cp /sdcard/Download/1000018110.png assets/images/logo.png
# نقل الخطوط البرمجية لمجلد الخطوط
mv *.ttf assets/fonts/ 2>/dev/null
# رفع الترتيب الجديد لـ GitHub
git add .
git commit -m "Cleanup: Final hierarchical structure and assets organization"
git push origin master --force
cd ~/EXCORA
# تأكد من نقل الشعار إذا لم ينقل بعد
cp /sdcard/Download/1000018110.png assets/images/logo.png
# رفع التعديلات النهائية
git add .
git commit -m "Final Hierarchy: Assets cleaned and logo placed"
git push origin master --force
# 1. الدخول لمجلد مشروعك الأساسي
cd ~/EXCORA
# 2. التأكد من وجود مجلد الصور
mkdir -p assets/images
# 3. نقل الصورة (تأكد من رقم الصورة الصحيح في التحميلات)
# سنقوم بتسميتها background.png ليتعرف عليها كود البايثون
cp /sdcard/Download/1000017310.jpg assets/images/background.png
# 1. تأكيد الدخول للمجلد الرئيسي
cd ~/
# 2. إذا لم يكن المجلد موجوداً، قم بسحبه فوراً (قد يستغرق وقتاً)
# إذا كان موجوداً، سيعطيك خطأ "already exists"، تجاهله.
git clone https://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@github.com/salmansamer827-cmyk/EXCORA.git
# 3. الدخول لمجلد المشروع بنجاح
cd EXCORA
# 4. نقل الشعار (The Crucial Step)
mkdir -p assets/images
cp /sdcard/Download/1000018110.png assets/images/logo.png
# 5. نقل صورة الخلفية (The AI background)
cp /sdcard/Download/1000017310.jpg assets/images/background.png
# 6. الرفع النهائي للسيرفر (تأكد من وجود الأنترنت)
git add .
git commit -m "UI: Official assets (logo and AI background) integrated"
git push origin master --force
cd ~/EXCORA
git remote remove origin
git remote add origin https://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@github.com/salmansamer827-cmyk/EXCORA.git
git remote -v
# 1. الدخول للمجلد (تأكد من كتابة الاسم بدقة)
cd ~/EXCORA
# 2. إنشاء مجلدات الأصول الهرمية
mkdir -p assets/images assets/fonts
# 3. منح Termux صلاحية الوصول للذاكرة (إذا لم تفعل ذلك سابقاً)
termux-setup-storage
# 4. نسخ الشعار والخلفية إلى مسار الأصول
cp /sdcard/Download/1000018110.png assets/images/logo.png
cp /sdcard/Download/1000017310.jpg assets/images/background.png
# 5. الرفع النهائي لـ GitHub لتحديث Colab
git add .
git commit -m "UI: Official assets and logo placement"
git push origin master --force
cd ~/EXCORA
# مسح الرابط القديم
git remote remove origin
# إضافة الرابط الجديد بالتوكن الصحيح (تأكد من نسخ السطر كاملاً)
git remote add origin https://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@github.com/salmansamer827-cmyk/EXCORA.git
# التأكد من وجود الصور قبل الرفع
mkdir -p assets/images
cp /sdcard/Download/1000018110.png assets/images/logo.png
cp /sdcard/Download/1000017310.jpg assets/images/background.png
# الرفع النهائي
git add .
git commit -m "Integrated logo and AI background"
git push -u origin master --force
termux-setup-storage
cp ~/storage/downloads/logs/IMG_20260327_170529_572.png ~/storage/shared/EXCORA/assets/images/logo.png
ls ~/storage/shared/EXCORA/assets/images/
mkdir -p ~/storage/shared/EXCORA/assets/images
cp /sdcard/Download/logs/IMG_20260327_170529_572.png ~/storage/shared/EXCORA/assets/images/logo.png
ls ~/storage/shared/EXCORA/assets/images/
import os
%cd /content/
# 1. إنشاء هيكل المجلدات داخل المشروع المرفوع
# 2. نقل الشعار لمكانه الصحيح
if os.path.exists('logo.png'):
# 3. حل مشكلة FileNotFoundError لملف buildozer
%cd EXCORA
if not os.path.exists('buildozer.spec'):
# 4. تحديث الإعدادات للأيقونة والأزرار العربية
with open('buildozer.spec', 'r') as f:
with open('buildozer.spec', 'w') as f:
cp /sdcard/Download/logs/IMG_20260327_170529_572.png ~/storage/shared/EXCORA/assets/images/logo.png
ls ~/storage/shared/EXCORA/assets/images/
clear
# إنشاء مجلد المشروع
mkdir ExcorArabicFont && cd ExcorArabicFont
# إنشاء المجلدات الفرعية للأوزان والتصاميم
mkdir sources builds tests
# إنشاء ملف التكويد الخاص بخصائص الخط العربي
touch sources/features.fea
# تهيئة المستودع لـ GitHub
git init
pip install ufoLib2 fonttools
git config --global user.email "your_email@example.com"
git config --global user.name "Your Name"
git add .
git commit -m "Initial project structure and master builder script"
git remote add origin [رابط المستودع الذي نسخته]
git branch -M main
git push -u origin main
# 1. ربط المجلد بالمستودع البعيد
git remote add origin https://github.com/salmansamer827-cmyk/ExcorArabicFont.git
# 2. تسمية الفرع الأساسي (للتأكد)
git branch -M main
# 3. محاولة الرفع لأول مرة
git push -u origin main
git config --global --add safe.directory /storage/emulated/0/.FileManagerRecycler/-539050831_PassiveBot_temp/ExcorArabicFont
git remote add origin https://github.com/salmansamer827-cmyk/ExcorArabicFont.git
git remote set-url origin https://github.com/salmansamer827-cmyk/ExcorArabicFont.git
git push -u origin main
git add .
git commit -m "First commit: Initial font project structure"
git branch -M main
git push -u origin main
python build_masters.py
git add .
git commit -m "Update builder to support multiple glyphs and 4 weights"
git push
# استعراض الملفات للتأكد
ls
# إذا رأيت ملف build_masters.py في القائمة، نفذه الآن:
python build_masters.py
git add .
git commit -m "Complete parametric builder with 4 weights and basic glyph set"
git push
# الانتقال إلى المجلد الحالي
cd /storage/emulated/0/.FileManagerRecycler/-539050831_PassiveBot_temp/ExcorArabicFont
# نسخ كل المحتويات إلى مجلد جديد في الـ Home الخاص بـ Termux
cp -r . ~/ExcorArabicFont
# الانتقال للمجلد الجديد المستقر
cd ~/ExcorArabicFont
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
