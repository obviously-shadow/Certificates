#!/bin/bash

html_segment=$(cat <<'EOF'
<p id="green"><a href="javascritp.pdf">Learn JavaScript Course</a></p>
EOF
)

sed -i "/<p id=\"green\"><a href=\"javascritp.pdf\">Learn JavaScript Course<\/a><\/p>/ {
  a $html_segment
  a $html_segment
}" index.html
