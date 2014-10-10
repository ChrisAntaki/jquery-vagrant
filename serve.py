#!/usr/bin/python

import subprocess
import sys

def help():
    print """
Usage: jquery [COMMAND]
    serve     Start testing server
"""

def serve():
    print """
Unit tests will be available at:
http://192.168.50.114:8000/test/
"""
    try:
        subprocess.call('php -S 0.0.0.0:8000 -t /vagrant/jquery/', shell=True)
    except:
        print """
Server terminated
"""
        pass

# Require a command
if len(sys.argv) < 2:
    help()
    quit()

# Shortcut
command = sys.argv[1]

# Start server or show help, for now
if command == "serve":
    serve()
else:
    help()
