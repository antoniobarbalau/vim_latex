import sys
import os
import subprocess

filename = os.path.dirname(sys.argv[1]) + '/Standalone_' + os.path.basename(sys.argv[1])

subprocess.call(['xdg-open', filename.replace('tex', 'pdf'), '&'])


