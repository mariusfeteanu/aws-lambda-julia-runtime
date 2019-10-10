echo "override JULIA_PRECOMPILE = 0" > Make.user
echo "override JULIA_CPU_TARGET = generic;native" >> Make.user
make

# 77 MB with precompile
# 68 MB without precompile
