function v --description '±Vagrant shortcut'
    if count $argv >/dev/null
        vagrant $argv
    else
        vagrant status
    end
end

make_completion v 'vagrant'
