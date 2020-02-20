Run:

```
run.sh path/to/your/clang
```

You should see something like this:
```
NORMAL (with -H)
. cxx/cstdlib
.. cxx/stddef.h
... /Users/teemperor/3llvm/rel/lib/clang/11.0.0/include/stddef.h
.... /Users/teemperor/3llvm/rel/lib/clang/11.0.0/include/__stddef_max_align_t.h
VIS MODULES
MODULES (this will fail)
test.cpp:3:1: error: missing '#include "cstddef"'; declaration of 'size_t' must be imported from module 'std.cstddef' before it is required
size_t i;
^
/Users/teemperor/3llvm/rel/lib/clang/11.0.0/include/stddef.h:46:23: note: previous declaration is here
typedef __SIZE_TYPE__ size_t;
                      ^
1 error generated.
```
