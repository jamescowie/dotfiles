function t --description '±Tree shortcut'
    if count $argv >/dev/null
        tree $argv
    else
        tree
    end
end

make_completion t 'tree'
