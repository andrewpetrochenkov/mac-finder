#!/usr/bin/env oascript

use framework "Foundation"
use framework "AppKit"
use scripting additions

on run argv
    set _path to (item 1 of argv)
    set _image to (item 2 of argv)
    set theImage to (current application's NSImage's alloc()'s initWithContentsOfFile:_image)
    (current application's NSWorkspace's sharedWorkspace()'s setIcon:theImage forFile:_path options:0)
    return
end run
