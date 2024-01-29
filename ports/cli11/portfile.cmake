vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO primosoftware/CLI11
    REF v2.4.0
    SHA512 01bc688e5111fdcc7ecdef5f45860ab6aa0232799bcf5a9823b23a8a9edb72631343b9908a9d8c55ef7e9680f7aefcf5396f410ae7d929bac6278b538d9cc558
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DCLI11_BUILD_EXAMPLES=OFF
        -DCLI11_BUILD_DOCS=OFF
        -DCLI11_BUILD_TESTS=OFF
        -DCLI11_PRECOMPILED=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH share/cmake/CLI11)
vcpkg_fixup_pkgconfig()
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")

# Handle copyright
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
