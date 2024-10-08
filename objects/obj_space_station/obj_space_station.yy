{
  "$GMObject":"",
  "%Name":"obj_space_station",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":11,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":4,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":12,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":13,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":14,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":15,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_space_station",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"obj_abstract_scalable",
    "path":"objects/obj_abstract_scalable/obj_abstract_scalable.yy",
  },
  "persistent":true,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"scrap_texture","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"scrap_texture","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_scrap_pile","path":"sprites/spr_scrap_pile/spr_scrap_pile.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_scrap_pile","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"scrap_masks_texture","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"scrap_masks_texture","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_mask","path":"sprites/spr_mask/spr_mask.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_mask","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"start_station_size","filters":[],"listItems":[],"multiselect":false,"name":"start_station_size","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"orbit_margin","filters":[],"listItems":[],"multiselect":false,"name":"orbit_margin","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"zoom_out_at","filters":[],"listItems":[],"multiselect":false,"name":"zoom_out_at","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"zoom_in_at","filters":[],"listItems":[],"multiselect":false,"name":"zoom_in_at","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"no_zoom_in_below","filters":[],"listItems":[],"multiselect":false,"name":"no_zoom_in_below","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1.1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"offset_shield","filters":[],"listItems":[],"multiselect":false,"name":"offset_shield","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"very_damaged_hp","filters":[],"listItems":[],"multiselect":false,"name":"very_damaged_hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"200","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"damaged_hp","filters":[],"listItems":[],"multiselect":false,"name":"damaged_hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"500","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_station_ok",
    "path":"sprites/spr_station_ok/spr_station_ok.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}