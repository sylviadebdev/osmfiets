[out:json][timeout:180];

// Gemeente Deventer (administratieve grens)
relation
  ["boundary"="administrative"]
  ["admin_level"="8"]
  ["name"="Deventer"];
map_to_area->.searchArea;

// Fietsenstallingen binnen Deventer
(
  node["amenity"="bicycle_parking"](area.searchArea);
  way["amenity"="bicycle_parking"](area.searchArea);
  relation["amenity"="bicycle_parking"](area.searchArea);
);

out body;
>;
out skel qt;
