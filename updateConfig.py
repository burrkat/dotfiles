import platform
import os.path

source = os.path.normpath('nvim/')

destination = None
operatingSystem = platform.system().lower()
if operatingSystem == 'windows':
    destination = os.path.normpath('%userprofile%\\AppData\\Local\\nvim\\')
elif operatingSystem == 'linux' or operatingSystem == 'darwin':
    destination = os.path.normpath("~/.config/nvim")

if not os.path.exists(destination):
    print(f'Couldn\'t find destination path {destination}, exiting')
    exit(1)
