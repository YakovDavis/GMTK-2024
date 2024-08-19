{
  "$GMObject":"",
  "%Name":"obj_game_controller",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":10,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":27,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":9,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":67,"eventType":13,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":60,"eventType":6,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":61,"eventType":6,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":11,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":4,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":12,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_game_controller",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
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
    {"$GMObjectProperty":"v1","%Name":"settings_filename","filters":[],"listItems":[],"multiselect":false,"name":"settings_filename","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"UserSettings.ini","varType":2,},
    {"$GMObjectProperty":"v1","%Name":"scroll_drag","filters":[],"listItems":[],"multiselect":false,"name":"scroll_drag","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.9","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"upgrades_vmargin","filters":[],"listItems":[],"multiselect":false,"name":"upgrades_vmargin","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"wheel_to_dragging","filters":[],"listItems":[],"multiselect":false,"name":"wheel_to_dragging","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"ship_spawn_radius","filters":[],"listItems":[],"multiselect":false,"name":"ship_spawn_radius","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1600","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"regular_enemy","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"name":"regular_enemy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_shooting_enemy","path":"objects/obj_shooting_enemy/obj_shooting_enemy.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_shooting_enemy","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"kamikaze_enemy","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"name":"kamikaze_enemy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_kamikaze_enemy","path":"objects/obj_kamikaze_enemy/obj_kamikaze_enemy.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_kamikaze_enemy","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"ace_enemy","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"name":"ace_enemy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_shooting_enemy","path":"objects/obj_shooting_enemy/obj_shooting_enemy.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_shooting_enemy","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"boss_enemy","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"name":"boss_enemy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_shooting_enemy","path":"objects/obj_shooting_enemy/obj_shooting_enemy.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_shooting_enemy","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"station_metal_amount","filters":[],"listItems":[],"multiselect":false,"name":"station_metal_amount","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":null,
  "spriteMaskId":null,
  "visible":false,
}