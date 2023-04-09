project "vec-2D"
   language "C++"
   cppdialect "C++17"
   
   kind "StaticLib"

   targetdir("bin/" .. outputdir)
   objdir("build/" .. outputdir)

   files {"src/**.cpp", "include/**.hpp"}

   includedirs "include"