function phpspec --description '±PHPSpec shortcut'
    if test -e ./bin/phpspec
        ./bin/phpspec $argv
    else
        echo 'Whoops PHPSpec is not installed. Are you in a project ?'
    end
end

make_completion phpspec 'phpspec'
