# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE\build"

# Utility rule file for _clean.

# Include any custom commands dependencies for this target.
include CMakeFiles/_clean.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/_clean.dir/progress.make

CMakeFiles/_clean:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Cleaning Build Files"
	make clean
	"C:\Program Files\CMake\bin\cmake.exe" -E remove "E:/The Courses/Embedded Systems/Tooling/STM32F401 RGB_Animation CMAKE/build/main.hex"

_clean: CMakeFiles/_clean
_clean: CMakeFiles/_clean.dir/build.make
.PHONY : _clean

# Rule to build all files generated by this target.
CMakeFiles/_clean.dir/build: _clean
.PHONY : CMakeFiles/_clean.dir/build

CMakeFiles/_clean.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\_clean.dir\cmake_clean.cmake
.PHONY : CMakeFiles/_clean.dir/clean

CMakeFiles/_clean.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE" "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE" "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE\build" "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE\build" "E:\The Courses\Embedded Systems\Tooling\STM32F401 RGB_Animation CMAKE\build\CMakeFiles\_clean.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/_clean.dir/depend

