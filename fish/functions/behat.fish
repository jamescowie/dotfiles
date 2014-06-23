function behat --description '±Behat shortcut'
    if test -e ./bin/behat
        ./bin/behat $argv
    else
        echo 'Whoops Behat is not installed. Are you in a project ?'
    end
end

make_completion behat 'behat'
