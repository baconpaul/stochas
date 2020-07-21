#
# This will build the mac install and disk image.
# you will need to have "Packages 1.2.9" installed on your system for this to work correctly
# Be sure to run this from the project's root directory
cmake -B build
cmake --build build --config Release
packagesbuild "install/mac/Stochas Open.pkgproj"
hdiutil create -volname "Stochas Open Install" -srcfolder build.install/mac/stochas_open -ov -format UDRO build.install/mac/stochas_open.dmg