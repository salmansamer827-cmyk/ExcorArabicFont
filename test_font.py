from PIL import Image, ImageDraw, ImageFont
import os

def test_my_font(weight_name):
    font_path = f"Changa_{weight_name}.ttf"
    if not os.path.exists(font_path):
        print(f"❌ الخطأ: الملف {font_path} غير موجود!")
        return

    # إنشاء صورة بيضاء
    img = Image.new('RGB', (800, 200), color=(255, 255, 255))
    draw = ImageDraw.Draw(img)

    # تحميل الخط
    font = ImageFont.truetype(font_path, 60)

    # كتابة نص تجريبي
    text = f"Testing Changa {weight_name}"
    draw.text((50, 50), text, fill=(0, 0, 0), font=font)

    output_name = f"test_{weight_name}.png"
    img.save(output_name)
    print(f"✅ تم حفظ الصورة بنجاح: {output_name}")

# تشغيل الاختبار على وزن Black
test_my_font("Black")

