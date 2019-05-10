#!/usr/bin/env oascript

on run argv
    set _posix_file to POSIX file (item 1 of argv)
    if count of argv is 1 then
        tell application "Finder"
            set _comment to comment of (_posix_file as alias)
            if (_comment is not "") then
                return _comment
            end if
        end tell
    else
        set _comment to (item 2 of argv)
        tell application "Finder"
            set comment of (_posix_file as alias) to _comment
            return
        end tell
    end if
end run
