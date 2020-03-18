-- Global control NetEase Cloud Music 


set query             to "{query}"
set PAUSE             to "pause"
set PAUSE_SHORT       to "p"
set NEXT              to "next"
set NEXT_SHORT        to "n"
set PREVIOUS          to "previous"
set PREVIOUS_SHORT    to "pr"
set LIKE              to "like"
set LIKE_SHORT        to "l"
set VOLUME_UP         to "volumeup"
set VOLUME_UP_SHORT   to "vu"
set VOLUME_DOWN       to "volumedown"
set VOLUME_DOWN_SHORT to "vd"
set OPEN_LYRIC        to "lyric"
set OPEN_LYRIC_SHORT  to "ly"
set QUIT_             to "quit"
set QUIT_SHORT        to "q"


if query is equal to "" then
    tell application "NeteaseMusic"
        reopen
        activate
    end tell
else if query is equal to PAUSE or query is equal to PAUSE_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
	    click menu item 1 of menu 1 of menu bar item 4 of menu bar 1
    end tell
else if query is equal to NEXT or query is equal to NEXT_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 2 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to PREVIOUS or query is equal to PREVIOUS_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 3 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to VOLUME_UP or query is equal to VOLUME_UP_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 4 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to VOLUME_DOWN or query is equal to VOLUME_DOWN_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 5 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to LIKE or query is equal to LIKE then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 6 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to OPEN_LYRIC or query is equal to OPEN_LYRIC_SHORT then
    tell application "System Events" to tell process "NeteaseMusic"
		click menu item 9 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if query is equal to QUIT_ or query is equal to QUIT_SHORT then
	tell application "Alfred 4" to search "quit NeteaseMusic" 
end if
