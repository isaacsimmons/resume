My markdown-formatted resume and a simple toolchain to build a pdf version from it.

# Usage #

    ./build.sh [filename] [viewer]

## Options ##
  
* filename: Optional basename of file to generate (default: resume)
* viewer: Optional pdf viewer program to preview output

Example: `./build.sh "Isaac Simmons - Resume" evince`

# Dependencies #

* perl
* wkhtmltopdf

