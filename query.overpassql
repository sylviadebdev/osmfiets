[out:json][timeout:180];

// Gemeente Deventer
relation
  ["boundary"="administrative"]
  ["admin_level"="8"]
  ["name"="Deventer"];
map_to_area->.searchArea;

// 1️⃣ Expliciete nodes (punten)
node["amenity"="bicycle_parking"](area.searchArea)->.parking_nodes;

// 2️⃣ Ways en relations (vlakken)
(
  way["amenity"="bicycle_parking"](area.searchArea);
  relation["amenity"="bicycle_parking"](area.searchArea);
)->.parking_areas;

// 3️⃣ Combineer alles
(
  .parking_nodes;
  .parking_areas;
);

// ✅ Recurse ALLEEN voor areas (niet voor nodes)
.parking_areas >;

// Output
out body;
out skel qt;
