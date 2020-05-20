#!/usr/bin/env python3

# from gi.repository import i3ipc
import i3ipc
import subprocess
import os

def on_shutdown(conn):
    os.system('sudo prime-switch-root.sh')

conn = i3ipc.Connection()
conn.on('ipc_shutdown', on_shutdown)
conn.main()
