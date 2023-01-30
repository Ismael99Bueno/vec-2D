project "vec2"
   language "C++"
   cppdialect "C++20"
   staticruntime "on"
   kind "StaticLib"

   targetdir("../bin/" .. outputdir)
   objdir("../build/" .. outputdir .. "/%{prj.name}")

   files {"src/**.cpp", "include/**.hpp"}

   includedirs {"../**/include", "/opt/homebrew/Cellar/sfml/2.5.1_2/include"}

   filter "configurations:debug"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:release"
      defines { "NDEBUG" }
      runtime "Release"
      optimize "On"

   filter "configurations:test"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:debug-profile"
      defines { "DEBUG", "PERF" }
      runtime "Debug"
      symbols "On"

   filter "configurations:release-profile"
      defines { "NDEBUG", "PERF" }
      runtime "Release"
      optimize "On"

   filter "configurations:test-profile"
      defines { "DEBUG", "PERF" }
      runtime "Debug"
      symbols "On"
