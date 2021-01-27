cmake_minimum_required(VERSION 3.16)

project(FreeGlutTest LANGUAGES C)

find_package(GLUT REQUIRED)

add_executable(test test.c)
target_link_libraries(test PRIVATE GLUT::GLUT)

add_executable(test2 test.c)
target_include_directories(test2 PRIVATE ${GLUT_INCLUDE_DIR})
target_link_libraries(test2 PRIVATE ${GLUT_LIBRARIES})

if(WIN32)
  # Try to link against freeglut.lib
  set(FREEGLUT_LIBRARY "$ENV{PREFIX}/Library/lib/freeglut.lib")
  add_executable(test3 test.c)
  target_include_directories(test3 PRIVATE ${GLUT_INCLUDE_DIR})
  target_link_libraries(test3 PRIVATE ${FREEGLUT_LIBRARY})
endif()
