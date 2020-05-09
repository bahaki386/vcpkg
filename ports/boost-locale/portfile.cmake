# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/locale
    REF boost-1.72.0
    SHA512 a32a92b4d393f31ca6ba35ceb3d8802b4764e8aa9c8ff5417f3a0f0c886f473b635d613af743764d244459dccb4e285ac6fa50a9eed8d10183fa9954c131b85d
    HEAD_REF master
)

if("icu" IN_LIST FEATURES)
    set(BOOST_LOCALE_ICU on)
else()
    set(BOOST_LOCALE_ICU off)
endif()

include(${CURRENT_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(
    SOURCE_PATH ${SOURCE_PATH}
    BOOST_CMAKE_FRAGMENT "${CMAKE_CURRENT_LIST_DIR}/cmake-fragment.cmake"
    OPTIONS
        boost.locale.iconv=off
        boost.locale.posix=off
        /boost/locale//boost_locale
        boost.locale.icu=${BOOST_LOCALE_ICU}
)
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
