rm *.tmp
rm -rf pcms
echo "NORMAL"
$1 -H -Icxx -nostdinc++ test.cpp -c
echo "VIS MODULES"
$1 -Icxx -nostdinc++ -fmodules-cache-path=pcms -fmodules -Xclang -fmodules-local-submodule-visibility test.cpp -c
echo "MODULES"
$1 -Icxx -nostdinc++ -fmodules-cache-path=pcms -fmodules -fcxx-modules test.cpp -c

