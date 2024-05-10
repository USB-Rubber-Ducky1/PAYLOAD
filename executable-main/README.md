GUIDE:
  1. Keylogger: 
     The payload (keylogger.dd, you can find it in the PAYLOAD repository) downloads bat file (keylogger_download.bat) which downloads keylogger.exe, runs it, and then deletes itself.
     The executable sends data to a telegram bot. To create the executable and enter the credentials of your Telegram bot:
     1. Download keylogger.py from this repository.
     2. Customize the keylogger.py file by putting your telegram bot token and chat id
     3. If you don't have python installed on your computer, install it here: https://www.python.org
     4. Install pyinstaller on your pc using the command "pip install pyinstaller".
     5. Open cmd. Move to the directory where keylogger.py is, run the command: pyinstaller keylogger.py
     6. Your exe keylogger will be found in the "dist" folder created by pyinstaller
     7. Update keylogger_download.bat putting the link to download your keylogger (you can upload it to your GitHub)
