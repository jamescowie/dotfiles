function t --description '±Tree shortcut'
    if count $argv >/dev/null
        tree $argv
    else
        tree -L 1
    end
end

make_completion t 'tree'
