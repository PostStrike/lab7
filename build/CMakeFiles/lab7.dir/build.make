# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = C:\Users\sysoe\Downloads\Aladin\lab7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\sysoe\Downloads\Aladin\lab7\build

# Include any dependencies generated for this target.
include CMakeFiles/lab7.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab7.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab7.dir/flags.make

CMakeFiles/lab7.dir/main.cpp.obj: CMakeFiles/lab7.dir/flags.make
CMakeFiles/lab7.dir/main.cpp.obj: C:/Users/sysoe/Downloads/Aladin/lab7/main.cpp
CMakeFiles/lab7.dir/main.cpp.obj: CMakeFiles/lab7.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\sysoe\Downloads\Aladin\lab7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab7.dir/main.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab7.dir/main.cpp.obj -MF CMakeFiles\lab7.dir\main.cpp.obj.d -o CMakeFiles\lab7.dir\main.cpp.obj -c C:\Users\sysoe\Downloads\Aladin\lab7\main.cpp

CMakeFiles/lab7.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab7.dir/main.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sysoe\Downloads\Aladin\lab7\main.cpp > CMakeFiles\lab7.dir\main.cpp.i

CMakeFiles/lab7.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab7.dir/main.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sysoe\Downloads\Aladin\lab7\main.cpp -o CMakeFiles\lab7.dir\main.cpp.s

# Object files for target lab7
lab7_OBJECTS = \
"CMakeFiles/lab7.dir/main.cpp.obj"

# External object files for target lab7
lab7_EXTERNAL_OBJECTS =

lab7.exe: CMakeFiles/lab7.dir/main.cpp.obj
lab7.exe: CMakeFiles/lab7.dir/build.make
lab7.exe: dependences/libdependences.a
lab7.exe: CMakeFiles/lab7.dir/linkLibs.rsp
lab7.exe: CMakeFiles/lab7.dir/objects1.rsp
lab7.exe: CMakeFiles/lab7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\sysoe\Downloads\Aladin\lab7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab7.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab7.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab7.dir/build: lab7.exe
.PHONY : CMakeFiles/lab7.dir/build

CMakeFiles/lab7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab7.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab7.dir/clean

CMakeFiles/lab7.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\sysoe\Downloads\Aladin\lab7 C:\Users\sysoe\Downloads\Aladin\lab7 C:\Users\sysoe\Downloads\Aladin\lab7\build C:\Users\sysoe\Downloads\Aladin\lab7\build C:\Users\sysoe\Downloads\Aladin\lab7\build\CMakeFiles\lab7.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/lab7.dir/depend

