echo "program začíná"


for rad in {1..10..1}; do
	cd ../src/
	echo "radius $rad cm"
	sed  -i "s|  G4double cyllinder_outer_radius = .*|  G4double cyllinder_outer_radius = $rad.*cm;|" B4DetectorConstruction.cc
	cd ../build
	make -j2
	./Molliere -m run1.mac
	cp Molliere.root Molliere_rad_$rad.root
	done



