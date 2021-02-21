#!/bin/sh

echo "# TODO" > TODO.md
echo "" >> TODO.md

grep -r "TODO: " source \
    | sed 's/\([^:]*\):TODO: \(.*\)/- [ ] [\2](\1)/' \
    >> TODO.md

echo "" >> TODO.md

# echo "$lines"









# for line in $lines
# do 
#     echo $line
# done



# files=$(echo "$lines" | grep -o '^[^:]*')
# todos=$(echo "$lines" | grep -o 'TODO: .*')

# echo "$files"
# echo "$todos"
