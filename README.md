# 📦 SketchUp Object Extractor

This Ruby script extracts all component instances and groups from a SketchUp model (.skp) and outputs a CSV file listing:

- Object name
- Layer
- Dimensions (width, height, depth)
- Count of identical objects

This is useful for generating cut lists, material estimates, or inventory breakdowns from your 3D design.

## Why this? 
I'm a hobby user of SketchUp. I've been using it since around 2010 for various personal projects, mostly to sketch out ideas. I always appreciated how easy it was to use — and that it was free — which made it a perfect fit for hobbyists like me.

Since SketchUp was acquired by Trimble, I've been using the web version. It's fine for basic sketching, but it's missing a few features that I find essential for my workflow. One of them is the ability to export a report listing all objects and their dimensions.

That's when I remembered that older free versions of SketchUp offered a Ruby console, which allowed programmatic access to the model. And that’s how this script came to life — as a workaround to bring to life missing functionality in a way that works for hobbyists using older versions.

If you're using a professional edition of SketchUp, you likely don’t need this script — the functionality already exists, you just have to dig a bit to find it. But if you're like me and depend on SketchUp 8, the last locally installable free version, this script helps add this missing functionality. (A download link to Sketchup 8 is available in the Requirements section.)

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


