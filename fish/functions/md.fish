function md -d 'Create PDF from markdown files'
    if count $argv >/dev/null
        markdown $argv[1] | htmldoc --cont --headfootsize 8.0 --linkcolor blue --linkstyle plain --format pdf14 - > $argv[1].pdf
    end
end


