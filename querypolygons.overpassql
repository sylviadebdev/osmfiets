[out:json][timeout:180];

// Gemeente Deventer
relation
  ["boundary"="administrative"]
  ["admin_level"="8"]
  ["name"="Deventer"];
map_to_area->.searchArea;

// Alleen als vlak gemapte fietsparkeren
(
  way["amenity"="bicycle_parking"](area.searchArea);
  relation["amenity"="bicycle_parking"](area.searchArea);
);

out body;
>;
out skel qt;
