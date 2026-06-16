[out:json][timeout:90];

// Alle fietsenstallingen binnen de gemeentegrens van Deventer
// (admin_level 8 = gemeente). nwr pakt nodes, ways én relations in één
// request; out center; geeft vlakken/relaties een puntcoordinaat.
area["boundary"="administrative"]["admin_level"="8"]["name"="Deventer"]->.deventer;

nwr["amenity"="bicycle_parking"](area.deventer);

out center;
