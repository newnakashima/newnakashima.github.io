if [ "$1" == "" ]; then
    echo "input post title"
    read title
else
    title=$1
fi
title=$(printf "$title" | tr ' ' "-")
filename=./_posts/$(date "+%Y-%m-%d-${title}.md")
cp template.md $filename
$EDITOR $filename
