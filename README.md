# 📦 SketchUp Object Extractor

This Ruby script extracts all component instances and groups from a SketchUp model (.skp) and outputs a CSV file listing:

- Object name
- Layer
- Dimensions (width, height, depth)
- Count of identical objects

This is useful for generating cut lists, material estimates, or inventory breakdowns from your 3D design.

## 🛠️ Usage Instructions

1. Open SketchUp.
2. Load the Ruby script:
  - Open the Ruby Console (Window > Ruby Console).
  - Load the script via:
    ```ruby
    load "path/to/your_script.rb"
    ```
3. Run the extraction:
   - The script will process all objects in the model and export a `bom.csv` file to the same folder as the .skp file 

## ✅ Requirements

SketchUp with Ruby scripting support (e.g., SketchUp Pro or older versions of Sketchup when it was stil free, like Sketchup 8. Here is the version which I'm using: http://www.oldversion.com/windows/google-sketchup-8-0-4811).
