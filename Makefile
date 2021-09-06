.PHONY: appicon

asset_folder = "AppIconExample/Assets/"

appicon:
	curl -L https://github.com/ralfebert/AppIconExample/raw/main/AppIconExample/Assets/Assets.xcassets/AppIcon.appiconset/Contents.json -o $(asset_folder)Assets.xcassets/AppIcon.appiconset/Contents.json
	/Applications/Sketch.app/Contents/MacOS/sketchtool export slices $(asset_folder)AppIcon.sketch
	mv -v icon_*.png Icon.png $(asset_folder)Assets.xcassets/AppIcon.appiconset/