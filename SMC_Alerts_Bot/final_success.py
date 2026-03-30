from PIL import Image, ImageDraw, ImageFont
import arabic_reshaper
from bidi.algorithm import get_display

def create_perfect_preview():
    # 1. النص العربي (سيظهر متصل وسليم 100%)
    text = "خط شانغا الاحترافي يعمل بنجاح"
    reshaped_text = arabic_reshaper.reshape(text)
    bidi_text = get_display(reshaped_text)

    # 2. إنشاء لوحة نيون (ألوان سولانا التي تحبها)
    img = Image.new('RGB', (1000, 400), color=(5, 5, 20))
    draw = ImageDraw.Draw(img)
    
    # تحميل الخط (تأكد أن الملف Changa_Bold.ttf في نفس المجلد)
    try:
        font = ImageFont.truetype("Changa_Bold.ttf", 80)
    except:
        font = ImageFont.load_default()

    # رسم النص بتوهج نيون تيل (Teal)
    draw.text((150, 150), bidi_text, fill=(0, 255, 230), font=font)
    
    # 3. حفظ الصورة في مكان يسهل فتحه (المعرض)
    img.save("/sdcard/DCIM/EXCORA_FINAL.png")
    print("✅ اذهب الآن إلى استوديو الصور.. ستجد ملف EXCORA_FINAL.png")

create_perfect_preview()
