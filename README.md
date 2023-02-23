# Prerequisites
You should have already installed Vulkan SDK.
# Create a new empty project
1. Clone the repo.
2. If your Visual Studio version is different from 2022, open the file `GenerateProjects.bat` in the `template` folder with a text editor and change `vs2022` with your version.
3. Execute `generate.py`, which will copy and rename the `template` folder and generate the solution files.

The generated project folder has this structure:
- `src` contains your code, here you find by default `main.cpp` test file.
- `vendor` contains all the libraries. If you need to add other libraries, such as `stb_image.h` given by the professor, put all the files inside `vendor/other` folder. 