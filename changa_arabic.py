from PIL import Image, ImageDraw, ImageFont
import arabic_reshaper

def draw_arabic_neon():
    # تجهيز النص العربي
    text = "خط شانغا الاحترافي"
    reshaped_text = arabic_reshaper.reshape(text)
    bidi_text = reshaped_text[::-1] # عكس النص يدوياً

    # إنشاء الصورة
    img = Image.new('RGB', (1000, 400), color=(5, 5, 20))
    draw = ImageDraw.Draw(img)

    # تحميل الخط (تأكد أن الملف موجود في نفس المجلد)
    font = ImageFont.truetype("Changa_Black.ttf", 100)

    # رسم توهج نيون أرجواني
    draw.text((153, 153), bidi_text, fill=(180, 0, 255), font=font)
    # رسم النص الأساسي تيل (Teal)
    draw.text((150, 150), bidi_text, fill=(0, 255, 230), font=font)

    img.save("Arabic_Neon.png")
    print("✅ تم حفظ الصورة: Arabic_Neon.png")

draw_arabic_neon()
