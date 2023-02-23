# Prerequisites
You should have already installed Vulkan SDK.
# Create a new empty project
1. Clone the repo.
2. If your Visual Studio version is different from 2022, open the file `GenerateProjects.bat` in the `template` folder with a text editor and change `vs2022` with your version.
3. Execute the python script `generate.py`, which, by inputting a name, will create a new project folder and generate the solution files.

The project has this structure:
- `src` contains your code. By default it contains `main.cpp` test file.
- `vendor` contains all the libraries. If you need to add other libraries, such as `stb_image.h` given by the professor, put all the files inside `vendor/other` folder. 
