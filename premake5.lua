project "ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "On"

    targetdir ( "bin/".. outputdir .. "/%{prj.name}" )
    objdir    ( "bin/intermediates/" .. outputdir .. "/%{prj.name}" )  

    files
    {
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp",
        "imgui_internal.h",
        "imgui.h",
        "imconfig.h"
    }

    includedirs
    {
        "../ImGui",
        "../GLFW/include",
        "../Glad/include"
    }

    filter "system:windows"
        systemversion "latest"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
