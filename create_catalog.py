from PIL import Image, ImageDraw, ImageFont
import os

def generate_specimen():
    weights = [
        ("Light", 300, (100, 100, 100)),   # لون رمادي فاتح
        ("Regular", 400, (50, 50, 50)),    # لون رمادي غامق
        ("Bold", 700, (0, 0, 0)),          # أسود
        ("Black", 900, (0, 150, 255))      # أزرق (لمسة برمجية)
    ]
    
    # إنشاء لوحة رسم كبيرة (800x1000)
    canvas = Image.new('RGB', (1000, 800), color=(255, 255, 255))
    draw = ImageDraw.Draw(canvas)
    
    y_offset = 80
    for name, weight, color in weights:
        font_path = f"Changa_{name}.ttf"
        if os.path.exists(font_path):
            # تحميل الخط بحجم كبير للعرض
            font_title = ImageFont.truetype(font_path, 80)
            font_sub = ImageFont.truetype(font_path, 30)
            
            # رسم اسم الوزن
            draw.text((100, y_offset), f"Changa {name}", fill=color, font=font_title)
            # رسم جملة توضيحية أصغر
            draw.text((100, y_offset + 90), "The quick brown fox jumps over the lazy dog.", fill=(150, 150, 150), font=font_sub)
            
            y_offset += 180

    canvas.save("Changa_Specimen.png")
    print("✅ تم إنشاء كتالوج الأوزان: Changa_Specimen.png")

generate_specimen()
