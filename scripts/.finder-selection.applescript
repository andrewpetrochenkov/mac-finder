#!/usr/bin/env oascript

tell application "Finder"
  set _selection to (get selection)
  if count of _selection is 0 then
    return POSIX path of  (target of front Finder window as text)
  else
    repeat with s in _selection
      try
        log (POSIX path of (s as alias))
      on error errorMessage number errorNumber
        --Can’t make alias "..." into type alias. (-1700)
        if (errorNumber is not in {-1700}) then
          error errorMessage number errorNumber
        end if
      end try
    end repeat
  end if
end tell
