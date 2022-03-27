add_executable(BareMetalArm)

target_sources(BareMetalArm PRIVATE startup.S)
target_link_options(BareMetalArm PRIVATE -T${CMAKE_CURRENT_SOURCE_DIR}/qemu-netduino2.ld)