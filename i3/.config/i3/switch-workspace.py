#!/usr/bin/env python

from json import loads
from os import popen
from sys import argv

def ipc_query(req="command", msg=""):
  ans = popen("i3-msg -t " + req + " " + msg).readlines()[0]
  return loads(ans)

if __name__ == "__main__":
  if len(argv) != 2:
    print("Usage: switch-workspace.py name-of-workspace")
    exit(-1)

  newworkspace = argv[1]

  active_display = None
  for w in ipc_query(req="get_workspaces"):
    if w['focused']:
      active_display = w['output']

  print(ipc_query(msg="'workspace " + newworkspace + "; move workspace to output " + active_display + "; workspace " + newworkspace + "'"))
