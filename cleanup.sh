aws lambda delete-function --function-name MANUAL-bash-runtime || true
aws lambda delete-layer-version --layer-name MANUAL-bash-runtime --version-number 9 || true
aws lambda delete-layer-version --layer-name MANUAL-bash-runtime --version-number 8 || true
rm *.zip
