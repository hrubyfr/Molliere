echo "program začíná"
let $((x = 1))

for rad in {1..50..5}; do
	
	cd ../src/
	echo "radius $rad cm"
	sed  -i "s|  G4double cyllinder_outer_radius = .*|  G4double cyllinder_outer_radius = $rad.*mm;|" B4DetectorConstruction.cc
	cd ../build
	make -j2
	./Molliere -m run1.mac
	cp Molliere.root Molliere_rad_$x.root
	((x = x + 1))
	done



