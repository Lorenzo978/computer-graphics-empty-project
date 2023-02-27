
VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["GLFW"] = "../vendor/GLFW/include"
IncludeDir["glm"] = "../vendor/glm"
IncludeDir["other"] = "%{prj.name}/vendor/other"
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"

LibraryDir = {}

LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"
LibraryDir["GLFW"] = "../vendor/GLFW/bin/Debug/GLFW"


Library = {}

Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"


workspace "template"
	architecture "x64"
	
	configurations {
		"Debug",
		"Release",
		"Dist"
	}

	startproject "template"

outputdir = "%{cfg.buildcfg}"
include "../vendor/GLFW"

project "template"
	location "template"
	kind "ConsoleApp"	
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	defines { "_CRT_SECURE_NO_WARNINGS" }

	files {
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp",
		"%{prj.name}/vendor/other/**.h",
		"%{prj.name}/vendor/other/**.cpp"
	}

	includedirs {
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.glm}",
		"%{IncludeDir.VulkanSDK}",
		"%{IncludeDir.other}",
	}

	libdirs 
	{ 
		"%{LibraryDir.VulkanSDK}"
	}

	links 
	{ 
		"GLFW",
		"%{Library.Vulkan}"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
