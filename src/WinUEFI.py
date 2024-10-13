import sys
import os

try:
    if os.name == 'nt':
        os.system('shutdown /fw /f /r /t 00')
    else:
        print('Not running on a Windows platform! Exiting...')
        sys.exit()
except Exception as e:
    print(f'An error occurred: {e}')
    sys.exit()