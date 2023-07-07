import sys
import os

if os.name != 'nt':
    print('Not running on a Windows platform! Exiting...')
    sys.exit()
if os.name == 'nt':
    os.system('shutdown /fw /f /r /t 00')