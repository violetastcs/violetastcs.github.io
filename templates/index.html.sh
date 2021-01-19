#!/usr/bin/env sh

index_md() {
	cat "content/index.md" | ./util/md2html.awk 
}

mksection() {
	name="$1"
	path="$2"

	cat << EOF
		<div class=lol>
			<h3>$name</h3>
			<ul>
				$(list_posts $path)
			</ul>
		</div>
EOF
}

list_posts() {
	section=$1
	for post in $(ls content/posts/"$section"); do
		meta="$(cat content/posts/$section/$post | sed '1,/===/!d' | sed '/===/d')"
		eval "$meta"
		path="/posts/$section/$(echo $post | sed 's/md/html/g')"
		echo "<li><a href=\"$path\">$title</a></li>"
	done
}

content=$(cat << EOF
$(index_md)

<h1> Sections </h1>
$(mksection "Test" "test")
$(mksection "Philosophy" "philosophy")
EOF
)

./templates/base.html.sh "$content" "Violetas" "index.png" "white"
