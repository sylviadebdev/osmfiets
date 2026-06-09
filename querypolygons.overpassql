
[out:json][timeout:60];

area
  ["boundary"="administrative"]
  ["admin_level"="8"]
  ["name"="Deventer"]
  ->.searchArea;

(
  way["amenity"="bicycle_parking"](area.searchArea);
  relation["amenity"="bicycle_parking"](area.searchArea);
);

out geom;
