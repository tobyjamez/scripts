# Bash script to create empty source files from specified headers
# And to create empty headers from specified source files
# Ensures that the include and src directories contain the correct files for each other
for filename in ./include/*; do
    if [ ! -f "./src/${filename:10:-2}cc" ]; then
        touch "./src/${filename:10:-2}cc"
    fi
    done;

for filename in ./src/*; do
    if [ ! -f "./include/${filename:6:-2}hh" ]; then
        touch "./include/${filename:6:-2}hh"
    fi
    done;
