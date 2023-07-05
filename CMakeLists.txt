# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo1)

# 
include_directories(${CMAKE_SOURCE_DIR}/include)

# 指定生成目标
add_executable(Demo main.cpp src/tool.cpp)

# 链接readline动态库
TARGET_LINK_LIBRARIES(Demo readline)