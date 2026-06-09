[out:json][timeout:60];

area
  ["boundary"="administrative"]
  ["admin_level"="8"]
  ["name"="Deventer"]
  ->.searchArea;

node["amenity"="bicycle_parking"](area.searchArea);
out body;
