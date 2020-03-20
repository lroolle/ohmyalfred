-- Global Control Netease Cloud Music 
-- Inspired by https://github.com/z4jst/AW_NeteaseAlfredController 
-- Script Version 0.1.2
-- Alfred Version 4.0.9
-- NeteaseMusic Version 2.3.2 (832)

set Q                  to "{query}"
set BLANK              to ""
set APP_NAME           to "NeteaseMusic" 

set PLAY_PAUSE         to "p"
set NEXT               to "n"
set LIKE               to "l"
set SHUFFLE            to "s"
set HIDE               to "h"
set QUIT_              to "q"
set SHOW_HIDE_LYRIC    to "ly"
set PREVIOUS           to "pr"

-- TODO: v++ v+++
set INCREASE_VOLUME    to "v+"
set DECREASE_VOLUME    to "v-"
set REPEAT_ALL         to "a"
set REPEAT_ONE         to "1"
set REPEAT_OFF         to ">"

set NOTIFICATION_TITLE to "Alfred 网易云音乐" 


if application APP_NAME is not running
    display notification "正在打开..." with title NOTIFICATION_TITLE
    tell application APP_NAME
        reopen
        activate
    end tell
    delay 3 
end if 


if Q is equal to BLANK 
    tell application APP_NAME
        activate
        reopen
    end tell
else if Q is equal to PLAY_PAUSE
    display notification "...播放/暂停" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
        click menu item 1 of menu 1 of menu bar item 4 of menu bar 1
    end tell
else if Q is equal to NEXT
    tell application "System Events" to tell process APP_NAME
		click menu item 2 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to PREVIOUS
    tell application "System Events" to tell process APP_NAME
		click menu item 3 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to INCREASE_VOLUME
    display notification "音量++" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 4 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to DECREASE_VOLUME
    display notification "音量--" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 5 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to LIKE
    display notification "“正中”红心" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 6 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to REPEAT_OFF 
    display notification "顺序播放" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 1 of menu of menu item 7 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to REPEAT_ONE
    display notification "单曲循环" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 2 of menu of menu item 7 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to REPEAT_ALL
    display notification "列表循环" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 3 of menu of menu item 7 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to SHUFFLE 
    display notification "随机播放" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 8 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to SHOW_HIDE_LYRIC
    display notification "...显示/隐藏歌词" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 9 of menu 1 of menu bar item 4 of menu bar 1
	end tell
else if Q is equal to HIDE 
    display notification "隐藏网易云音乐窗口" with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 7 of menu 1 of menu bar item 2 of menu bar 1
	end tell
else if Q is equal to QUIT_ 
    display notification "退出网易云音乐..." with title NOTIFICATION_TITLE
    tell application "System Events" to tell process APP_NAME
		click menu item 11 of menu 1 of menu bar item 2 of menu bar 1
	end tell
end if
