package ibmcloud.resources.planned.ibm_schematics_inventory
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_inventory"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_schematics_inventory").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
inventories_ini = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "inventories_ini", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
resource_queries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_queries", null) |
        res := resources_map[_]
        true
     }
}

