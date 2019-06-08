#!/usr/bin/env app osascript

tell application "Finder"
    set theWindowList to  every Finder window whose index is not 1
    repeat with i from 1 to number of items in theWindowList
        set w to item i of theWindowList
        close Finder window (index of w)
    end repeat
end tell
