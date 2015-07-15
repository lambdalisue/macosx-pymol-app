on posixList(aList)
    set retVal to {}
    repeat with aItem in aList
        set retVal to retVal & quoted form of POSIX path of aItem
    end repeat
    return retVal
end posixList

on joinList(aList, delimiter)
    set retVal to ""
    set prevDelimiter to AppleScript's text item delimiters
    set AppleScript's text item delimiters to delimiter
    set retVal to aList as string
    set AppleScript's text item delimiters to prevDelimiter
    return retVal
end joinList

on main(arg)
    set rootPath to POSIX path of (path to me as text)
    set execPath to quoted form of POSIX path of ({rootPath, "/Contents", "/MacOS", "/PyMOL.sh"} as text)
    set execComd to {execPath, space, arg, space, "&>/dev/null", space, "&"} as text
    -- display dialog execComd
    do shell script execComd
end main

on open argv
    main(joinList(posixList(argv), space))
end open

on run
    main("")
end run
