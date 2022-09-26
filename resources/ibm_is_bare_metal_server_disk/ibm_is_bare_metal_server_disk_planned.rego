package ibmcloud.resources.planned.ibm_is_bare_metal_server_disk
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_disk"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_bare_metal_server_disk").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
disk = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk", null) |
        res := resources_map[_]
        true
     }
}

