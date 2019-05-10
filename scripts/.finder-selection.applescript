#!/usr/bin/env oascript

tell application "Finder"
    set _selection to (get selection)
    if count of _selection is 0 then
        return POSIX path of  (target of front Finder window as text)
    else
        repeat with s in _selection
            log (POSIX path of (s as alias)) --2 stderr
        end repeat
    end if
end tell
