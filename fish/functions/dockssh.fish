function dockssh --description '±Quick bash prompt on docker conteiner'
    if count $argv >/dev/null
        docker exec -i -t $argv bash
    else
        set_color red
        echo "Not enough arguments, Requires docker container ID"
    end
end
