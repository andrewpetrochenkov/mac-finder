#!/usr/bin/osascript

on run argv
    set _posix_file to POSIX file (item 1 of argv) as text
    tell application "Finder"
        set theWindowList to every Finder window
        repeat with i from 1 to number of items in theWindowList
            set w to item i of theWindowList
            set _target to (target of w as text)
            set _target_path to (POSIX path of _target)
            if (POSIX path of _posix_file) is (POSIX path of _target) then
                tell w to activate
                return
            end if
        end repeat
        reveal _posix_file
        return
    end tell
end run
