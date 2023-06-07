defaults write com.apple.dt.Xcode IDESkipPackagePluginFingerprintValidatation -bool YES
echo "The user defaults were written"
echo $(whoami)
echo "$SHELL"
echo "my environment is:"
echo $(env)
echo "Will try to call the executable and passin command line args"

echo "Will try to call the executable and passin command line args" > myfile.txt

