function article --description '±Create a new article for my site'
    if count $argv >/dev/null
        g pull
        g co -b feature/post_$argv
        set date (date +"%Y-%m-%d")
echo '---
layout: post
title: Change post title
description: "Post description"
category: articles
tags: [Tag Name]
comments: true
share: true
---        
' > _posts/$date-$argv.md


    else 
        echo "Requires a post name: article [article name]"
    end
end
