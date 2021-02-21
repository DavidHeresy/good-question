#!/bin/sh

echo "# TODO" > TODO.md
echo "" >> TODO.md

git grep "TODO: " source/index.rst \
    | sed 's/\([^:]*\):TODO: \(.*\)/- [ ] [\2](\1)/' \
    >> TODO.md

echo "" >> TODO.md
echo "## Computers" >> TODO.md
echo "" >> TODO.md

git grep "TODO: " source/computers \
    | sed 's/\([^:]*\):TODO: \(.*\)/- [ ] [\2](\1)/' \
    >> TODO.md

echo "" >> TODO.md
echo "## Music" >> TODO.md
echo "" >> TODO.md

git grep "TODO: " source/music \
    | sed 's/\([^:]*\):TODO: \(.*\)/- [ ] [\2](\1)/' \
    >> TODO.md

echo "" >> TODO.md
