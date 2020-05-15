-- Open new application window within current workspace
-- Script Version 0.0.2
-- Alfred Version 4.0.9

-- Applications current support:
--   * Finder
--   * Chrome
--   * Safari
--   * Firefox
--   * iTerm2
--   * Alacritty(Only if "SpawnNewInstance" enabled and set keybindding CMD+N)


on alfred_script(q)

	set q to name of (info for q)

	if application q is not running
    		display notification "正在打开..." with title q
    		tell application q
        		activate
    		end tell
		return
	end if

	if q is equal to "Finder.app"
		tell application "Finder" to make new Finder window
	else if q is equal to "Google Chrome.app"
		tell application q to make new window
	else if q is equal to "Safari.app"
		tell application "Safari" to make new document
	else if q is equal to "Firefox.app"
		tell application "System Events"
    			tell process "Firefox"
       			click menu item "New Window" of menu "File" of menu bar 1
   			end tell
		end tell
	else if q is equal to "Alacritty.app"
		tell application "System Events" to keystroke "n" using command down
    else if q is equal to "iTerm.app"
		run script "
			on run {q}
				tell application \"iTerm\"
					create window with default profile
				end tell
			end run
		" with parameters {q}
	else
		tell application q
			reopen
    		end tell
 	end if

	tell application q to activate

end alfred_script
