from fontTools.ttLib import TTFont
import os

def create_weight(input_font, output_name, weight_value):
    if not os.path.exists(input_font):
        print(f"خطأ: ملف {input_font} غير موجود في هذا المجلد!")
        return

    try:
        font = TTFont(input_font)
        font['OS/2'].usWeightClass = weight_value
        
        for record in font['name'].names:
            if record.nameID == 2:
                record.string = output_name.encode('utf-16-be')
                
        output_file = f"Changa_{output_name}.ttf"
        font.save(output_file)
        print(f"✅ تم بنجاح تصدير: {output_file}")
    except Exception as e:
        print(f"❌ خطأ: {e}")

# تأكد أن ملف Changa-Regular.ttf موجود في نفس مكان هذا السكربت
create_weight('Changa-Regular.ttf', 'Light', 300)
create_weight('Changa-Regular.ttf', 'Regular', 400)
create_weight('Changa-Regular.ttf', 'Bold', 700)
create_weight('Changa-Regular.ttf', 'Black', 900)
# استدعاء الوظائف لتوليد الملفات
create_weight('Changa-Regular.ttf', 'Light', 300)
create_weight('Changa-Regular.ttf', 'Regular', 400)
create_weight('Changa-Regular.ttf', 'Bold', 700)
create_weight('Changa-Regular.ttf', 'Black', 900)
