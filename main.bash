#!/bin/bash

# Define the HTML segment to be duplicated
html_segment=$(cat <<'EOF'
<p id="green"><a href="javascritp.pdf">Learn JavaScript Course</a></p>
EOF
)

# Use sed to append the HTML segment two more times after 
# the line containing the original segment in index.html
sed -i "/<p id=\"green\"><a href=\"javascritp.pdf\">Learn JavaScript Course<\/a><\/p>/ {
  a $html_segment
  a $html_segment
}" index.html
