#!/bin/sh

echo "# TODO" > TODO.md
echo "" >> TODO.md

git grep "TODO: " source \
    | sed 's/\([^:]*\):TODO: \(.*\)/- [ ] [\2](\1)/' \
    >> TODO.md

echo "" >> TODO.md

