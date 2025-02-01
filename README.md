# mendls
An education kernel written in Swift for the Raspberry Pi 4B.

# Export toolchain and llvm paths:

echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc

export TOOLCHAINS=$(plutil -extract CFBundleIdentifier raw /Library/Developer/Toolchains/XXXX.xctoolchain/Info.plist)
