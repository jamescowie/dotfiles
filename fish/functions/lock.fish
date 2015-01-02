function lock --description '+lock the mac'
	 /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end

make_completion lock 'lock'
