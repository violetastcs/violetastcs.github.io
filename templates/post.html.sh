content="$1"
backg="$2"
title="$3"
colour="$4"

html="$(cat << EOF
$(echo "$content" | ./util/md2html.awk) 
EOF
)"

./templates/base.html.sh "$html" "$title" "$backg" "$colour"
