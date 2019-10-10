# echo "override JULIA_PRECOMPILE = 0" > Make.user
# https://docs.julialang.org/en/v1/devdocs/sysimg/index.html

echo "override JULIA_CPU_TARGET = x86-64" > Make.user

cat Make.user
make clean
make -j 4 binary-dist
ls -lh julia-1.2.0-linux64.tar.gz

# 77 MB with precompile
# 68 MB without precompile
