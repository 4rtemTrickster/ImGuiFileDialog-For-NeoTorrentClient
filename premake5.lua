project "ImGuiFileDialog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files { "**.h", "**.cpp" }

    includedirs
    {
        "../Walnut/vendor/imgui"
    }

    links
    {
        "ImGui",
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
        symbols "off"