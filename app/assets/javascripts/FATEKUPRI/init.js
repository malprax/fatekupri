var FATEKUPRI = {}

FATEKUPRI.namespace = function(ns_string, obj) {
  var parts = ns_string.split('.'),
      parent = FATEKUPRI,
      i;
  if (parts[0] === "FATEKUPRI") {
    parts = parts.slice(1);
  }
  for (i = 0; i < parts.length; i += 1) {
    if (typeof parent[parts[i]] === "undefined") {
      if (i === (parts.length-1) && obj != null) {
        parent[parts[i]] = obj;
      } else {
        parent[parts[i]] = {};
      }
    }
    parent = parent[parts[i]];
  }
  return parent;
};
