# Prerequisites
- This project template ONLY works Visual Studio on Windows.
- You must have already installed Vulkan SDK.
# Create a new empty project
1. Clone the repo using `git clone --recurse-submodules https://github.com/Lorenzo978/computer-graphics-empty-project.git`.
2. If your Visual Studio version is different from 2022, open the file `GenerateProjects.bat` in the `template` folder with a text editor and change `vs2022` with your version.
3. Execute the python script `generate.py`, which, by inputting a name, will create a new project folder and generate the solution files.
4. Open the created folder and launch the `.sln` file.

The project has this structure:
- `src` contains your code. By default it contains only `main.cpp`. Put here the file `A##.cpp` and rename it to `main.cpp`.
- `vendor` contains all the libraries. If you need to add other includes, such as `stb_image.h` given by the professor in the `headers` folder, put them inside `vendor/other` folder.

For any other folders, such as `shaders`, `textures` etc. copy them outside the `src` folder.
