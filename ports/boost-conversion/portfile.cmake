# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/conversion
    REF boost-1.68.0
    SHA512 7b207134766cf68607e575374cb936c3718328a4d0e9ae1cc245bb0ef727a9d6961a11974cffb2b9abe99f82948d0f7b7f1e9404a55091d88fbce9aab1d673f5
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
