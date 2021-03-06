echo "# Test suite! <3"

echo "\n - Exit code should be \`0\` when \`.only\` is NOT found."
./bin/dot-only-hunter bin
res=$?
echo "Exit code: $res"
if [[ $res -ne 0 ]]; then
  exit 1
fi

echo "\n - Exit code should be \`1\` when \`.only\` is found."
# dot-only-hunter will, at least, find this .only: `it.only(...)`
./bin/dot-only-hunter .
res=$?
echo "Exit code: $res"
if [[ $res -ne 1 ]]; then
  exit 1
fi

echo "\n - Exit code should be \`1\` when folder (default or chosen) isn't found."
# dot-only-hunter will try to find the 'test' folder, and since there isn't
# one, it should fail. To catch people from not configuring the tool properly.
./bin/dot-only-hunter
res=$?
echo "Exit code: $res"
if [[ $res -ne 1 ]]; then
  exit 1
fi

echo "\nAll good! <3"
