chmod 755 function.sh bootstrap
# zip function.zip function.sh bootstrap

rm *.zip

zip runtime.zip bootstrap

zip function-only.zip function.sh
