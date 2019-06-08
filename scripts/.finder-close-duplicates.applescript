#!/usr/bin/osascript

set keepWindowList to {}
set closeWindowCount to 0
tell application "Finder"
    with timeout of 10 second
    set theWindowList to every Finder window (* get the list of finder windows*)
    repeat with i from 1 to number of items in theWindowList (* iterate through each winodow *)
        set this_item to item i of theWindowList (* get a winodow  in the list*)
        set windowID to id of this_item (* get the windows  unique id*)
        set windowTarget to target of this_item (* get the windows  target*)
        set windowName to name of this_item (* get the windows name *)

        if target of this_item is computer container then (* Check if window is a  computer container *)
            if windowName is in keepWindowList then (* Check if the window name is in the keepWindowList *)
                set closeWindowCount to closeWindowCount + 1 (* add 1 to the closeWindowCount if the window name is in the list *)
                close this_item (* close the Window *)
            else
                copy windowName to end of keepWindowList (* The Window name was not in the list so add it to the list*)
            end if

        else if windowName contains "Searching " then (* The Window was not a computer container so check if its a Search window*)

            if windowName is in keepWindowList then (* Check if the window name is in the keepWindowList *)
                set closeWindowCount to closeWindowCount + 1 (* add 1 to the closeWindowCount if the window name is in the list *)
                close this_item (* close the Window *)
            else
                copy windowName to end of keepWindowList (* The Window name was not in the list so add it to the list*)
            end if
        else (* The Window was not a computer container or a Search window so it should be a normal finder window*)
            set windowNTargets to POSIX path of (windowTarget as alias) (*Convert the target to an alias path from a file system item reference and then  get its Posix path*)

            if windowNTargets is in keepWindowList then (* Check if the window Target is in the keepWindowList *)
                set closeWindowCount to closeWindowCount + 1 (* add 1 to the closeWindowCount if the window Target is in the list *)
                close this_item (* close the Window *)
            else
                copy windowNTargets to end of keepWindowList (* The Window target was not in the list so add it to the list*)
            end if

        end if

    end repeat
    end timeout
    return
end tell
