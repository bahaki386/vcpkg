# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/throw_exception
    REF boost-1.66.0
    SHA512 46c1683ded42fe9b0cd44711071bee1122dbd0529648f69439cc5391d05e7e22968235bc852878441ad051b6c021b10e319b6337aff28f6acaafca7e70480ef8
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
