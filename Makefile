.PHONY: appicon

asset_folder = "AppIconExample/Assets/"

appicon:
	curl https://gist.githubusercontent.com/ralfebert/beab447be0265d43a4927541e47ee913/raw/e53306c5916e16a9e0ee121988b40d9463c2ab50/Contents.json -o $(asset_folder)Assets.xcassets/AppIcon.appiconset/Contents.json
	/Applications/Sketch.app/Contents/MacOS/sketchtool export slices $(asset_folder)AppIcon.sketch
	mv -v icon_*.png $(asset_folder)Assets.xcassets/AppIcon.appiconset/