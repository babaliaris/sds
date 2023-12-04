project "SDS"
    kind "StaticLib"
    language "C"
    targetdir "%{_WORKING_DIR}/builds/%{cfg.shortname}"
    objdir "%{_WORKING_DIR}/obj/%{prj.name}-%{cfg.shortname}"

    files {
        "sds.h",
        "sds.c",
        "sdsalloc.h"
    }

    includedirs {
        "."
    }

    filter "configurations:debug"
        optimize "Off"
        symbols "On"

    filter "configurations:dist"
        optimize "On"
        symbols "Off"

    filter "configurations:release"
        optimize "On"
        symbols "Off"