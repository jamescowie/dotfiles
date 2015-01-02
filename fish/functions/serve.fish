function serve --description '±Simple PHP server'
    if count $argv >/dev/null
        php $argv
    else
        php -S localhost:8080
    end
end

make_completion serve 'php -S'
