project "imgui"
   kind "StaticLib"
   language "C++"
   targetdir ("bin/" .. outputdir)
   objdir ("Intermediate/" .. outputdir)
   defines { "IMGUI_IMPL_OPENGL_LOADER_GLAD" }

   files 
   { 
		"imconfig.h", 
		"imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp", 
		"imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
   }

   filter "system:windows"
      staticruntime "On"
      cppdialect "C++17"
      systemversion "latest"
   
   filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

   filter "configurations:Release"
        runtime "Release"
        optimize "on"
        
   filter "configurations:Release"
		runtime "Release"
		optimize "on"