from os import path
import shutil
import os
import re
import subprocess


project_name = input("Enter the new project name:")

if not path.exists(project_name):
    source_folder = 'template'
    destination_folder = project_name

    shutil.copytree(source_folder, destination_folder)
    os.rename(destination_folder+ "/template",destination_folder+ "/" + project_name)

    file_path = project_name + "/premake5.lua"

    with open(file_path, 'r') as f:
        contents = f.read()

    contents = re.sub(r'template', project_name, contents)

    with open(file_path, 'w') as f:
        f.write(contents)
    
    os.chdir(project_name)
    generate = "call GenerateProjects.bat"
    os.system(generate)
    print("Project files for "+ project_name + " generated.")
else:
    print("Project already exists.")