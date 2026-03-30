import asyncio
import edge_tts
import os

# نص الفيديو الأول (يمكنك تغييره لاحقاً)
TEXT = "هل كنت تعلم أن أغنى رجل في التاريخ كان أفريقياً؟ منسى موسى، الذي كانت ثروته لا تقدر بمال."
VOICE = "ar-SA-HamedNeural"
OUTPUT_FILE = "tiktok_audio.mp3"

async def create_audio():
    print("🚀 جاري معالجة الصوت للمشروع...")
    communicate = edge_tts.Communicate(TEXT, VOICE)
    await communicate.save(OUTPUT_FILE)
    print(f"✅ تم إنشاء الملف بنجاح: {os.path.abspath(OUTPUT_FILE)}")

if __name__ == "__main__":
    asyncio.run(create_audio())
