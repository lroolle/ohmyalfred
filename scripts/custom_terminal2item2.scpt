-- Custom Terminal run shell commands in New iTerm2 window
-- For iTerm 3.1.1+


on alfred_script(q)
    run script "
        on run {q}
            tell application \"iTerm\"
                activate
                create window with default profile
                select first window
                tell the first window
                    tell current session to write text q
                end tell
            end tell
        end run
    " with parameters {q}
end alfred_script
