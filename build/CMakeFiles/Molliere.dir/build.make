# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/frantisek/G4/Molliere

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frantisek/G4/Molliere/build

# Include any dependencies generated for this target.
include CMakeFiles/Molliere.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Molliere.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Molliere.dir/flags.make

CMakeFiles/Molliere.dir/Molliere.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/Molliere.cc.o: ../Molliere.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Molliere.dir/Molliere.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/Molliere.cc.o -c /home/frantisek/G4/Molliere/Molliere.cc

CMakeFiles/Molliere.dir/Molliere.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/Molliere.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/Molliere.cc > CMakeFiles/Molliere.dir/Molliere.cc.i

CMakeFiles/Molliere.dir/Molliere.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/Molliere.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/Molliere.cc -o CMakeFiles/Molliere.dir/Molliere.cc.s

CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o: ../src/B4DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o -c /home/frantisek/G4/Molliere/src/B4DetectorConstruction.cc

CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4DetectorConstruction.cc > CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.i

CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4DetectorConstruction.cc -o CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.s

CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o: ../src/B4PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o -c /home/frantisek/G4/Molliere/src/B4PrimaryGeneratorAction.cc

CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4PrimaryGeneratorAction.cc > CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.i

CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4PrimaryGeneratorAction.cc -o CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.s

CMakeFiles/Molliere.dir/src/B4RunAction.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4RunAction.cc.o: ../src/B4RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Molliere.dir/src/B4RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4RunAction.cc.o -c /home/frantisek/G4/Molliere/src/B4RunAction.cc

CMakeFiles/Molliere.dir/src/B4RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4RunAction.cc > CMakeFiles/Molliere.dir/src/B4RunAction.cc.i

CMakeFiles/Molliere.dir/src/B4RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4RunAction.cc -o CMakeFiles/Molliere.dir/src/B4RunAction.cc.s

CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o: ../src/B4aActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o -c /home/frantisek/G4/Molliere/src/B4aActionInitialization.cc

CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4aActionInitialization.cc > CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.i

CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4aActionInitialization.cc -o CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.s

CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o: ../src/B4aEventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o -c /home/frantisek/G4/Molliere/src/B4aEventAction.cc

CMakeFiles/Molliere.dir/src/B4aEventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4aEventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4aEventAction.cc > CMakeFiles/Molliere.dir/src/B4aEventAction.cc.i

CMakeFiles/Molliere.dir/src/B4aEventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4aEventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4aEventAction.cc -o CMakeFiles/Molliere.dir/src/B4aEventAction.cc.s

CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o: CMakeFiles/Molliere.dir/flags.make
CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o: ../src/B4aSteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o -c /home/frantisek/G4/Molliere/src/B4aSteppingAction.cc

CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frantisek/G4/Molliere/src/B4aSteppingAction.cc > CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.i

CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frantisek/G4/Molliere/src/B4aSteppingAction.cc -o CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.s

# Object files for target Molliere
Molliere_OBJECTS = \
"CMakeFiles/Molliere.dir/Molliere.cc.o" \
"CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o" \
"CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o" \
"CMakeFiles/Molliere.dir/src/B4RunAction.cc.o" \
"CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o" \
"CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o" \
"CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o"

# External object files for target Molliere
Molliere_EXTERNAL_OBJECTS =

Molliere: CMakeFiles/Molliere.dir/Molliere.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4DetectorConstruction.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4PrimaryGeneratorAction.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4RunAction.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4aActionInitialization.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4aEventAction.cc.o
Molliere: CMakeFiles/Molliere.dir/src/B4aSteppingAction.cc.o
Molliere: CMakeFiles/Molliere.dir/build.make
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4Tree.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4FR.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4GMocren.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4visHepRep.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4RayTracer.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4VRML.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4OpenGL.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4gl2ps.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4vis_management.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4modeling.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4interfaces.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4persistency.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4error_propagation.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4readout.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4physicslists.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4tasking.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4parmodels.so
Molliere: /usr/lib/x86_64-linux-gnu/libXmu.so
Molliere: /usr/lib/x86_64-linux-gnu/libXext.so
Molliere: /usr/lib/x86_64-linux-gnu/libXt.so
Molliere: /usr/lib/x86_64-linux-gnu/libICE.so
Molliere: /usr/lib/x86_64-linux-gnu/libSM.so
Molliere: /usr/lib/x86_64-linux-gnu/libX11.so
Molliere: /usr/lib/x86_64-linux-gnu/libGL.so
Molliere: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
Molliere: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
Molliere: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
Molliere: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
Molliere: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4run.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4event.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4tracking.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4processes.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4analysis.so
Molliere: /usr/lib/x86_64-linux-gnu/libexpat.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4digits_hits.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4track.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4particles.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4geometry.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4materials.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4zlib.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4graphics_reps.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4intercoms.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4global.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4clhep.so
Molliere: /home/frantisek/Software/geant4/geant4.10.07.p02-install/lib/libG4ptl.so.0.0.2
Molliere: CMakeFiles/Molliere.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/frantisek/G4/Molliere/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable Molliere"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Molliere.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Molliere.dir/build: Molliere

.PHONY : CMakeFiles/Molliere.dir/build

CMakeFiles/Molliere.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Molliere.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Molliere.dir/clean

CMakeFiles/Molliere.dir/depend:
	cd /home/frantisek/G4/Molliere/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frantisek/G4/Molliere /home/frantisek/G4/Molliere /home/frantisek/G4/Molliere/build /home/frantisek/G4/Molliere/build /home/frantisek/G4/Molliere/build/CMakeFiles/Molliere.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Molliere.dir/depend

