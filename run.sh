rm -rf pcms
echo "NORMAL"
$1 -H -Icxx -nostdinc++  -isysroot "/Users/teemperor/test/reduce/sdk" test.cpp -c
echo "VIS MODULES"
$1 -Icxx -nostdinc++ -fmodules-cache-path=pcms -isysroot "/Users/teemperor/test/reduce/sdk" -fmodules -Xclang -fmodules-local-submodule-visibility test.cpp -c
echo "MODULES"
$1 -Icxx -nostdinc++ -fmodules-cache-path=pcms -isysroot "/Users/teemperor/test/reduce/sdk" -fmodules -fcxx-modules test.cpp -c

