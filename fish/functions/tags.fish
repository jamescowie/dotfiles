function tags -d 'Create etags for project'
    ctags -e --languages=php -R --exclude=.git --exclude=pub/static --exclude=node_modules
end


