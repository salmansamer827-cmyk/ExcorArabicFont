from PIL import Image, ImageDraw, ImageFont
import arabic_reshaper

def draw_perfect_arabic():
    # 1. النص العربي
    text = "خط شانغا الاحترافي"
    
    # 2. معالجة النص ليكون متصلاً
    reshaped_text = arabic_reshaper.reshape(text)
    
    # 3. عكس النص (هذا ضروري لإظهاره بالترتيب الصحيح من اليمين لليسار)
    display_text = reshaped_text[::-1]

    # إنشاء الصورة بخلفية نيون
    img = Image.new('RGB', (1000, 400), color=(5, 5, 20))
    draw = ImageDraw.Draw(img)
    
    # تحميل الخط (تأكد أن ملف الخط موجود في نفس المجلد)
    font = ImageFont.truetype("Changa_Black.ttf", 100)
    
    # رسم النص بتأثير النيون (تيل)
    draw.text((150, 150), display_text, fill=(0, 255, 230), font=font)
    
    img.save("Final_Arabic_Neon.png")
    print("✅ مبروك! الصورة جاهزة باسم: Final_Arabic_Neon.png")

draw_perfect_arabic()
