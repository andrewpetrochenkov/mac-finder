#!/usr/bin/osascript

-- usage: source target filename

on run argv
    set _source to POSIX FILE (item 1 of argv)
    set _target to POSIX FILE (item 2 of argv)
    set _name to (item 3 of argv)
    set _dst to (POSIX path of _target & "/" & _name)
    tell application "System Events"
        set _exists to (exists file _dst)
    end tell
    if (_exists) then return
    tell application "Finder"
        set _alias to make new alias at _target to _source
        set name of _alias to (item 3 of argv)
        return
    end tell
end run
