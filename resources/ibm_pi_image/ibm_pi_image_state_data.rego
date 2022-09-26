package ibmcloud.resources.state.data.ibm_pi_image
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_image"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_image", "data").resources[_]
}
hypervisor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hypervisor", null) |
        res := resources_map[_]
        true
     }
}
storage_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_pool", null) |
        res := resources_map[_]
        true
     }
}
pi_image_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_name", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size", null) |
        res := resources_map[_]
        true
     }
}
storage_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_type", null) |
        res := resources_map[_]
        true
     }
}
image_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_type", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
architecture = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "architecture", null) |
        res := resources_map[_]
        true
     }
}
operatingsystem = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operatingsystem", null) |
        res := resources_map[_]
        true
     }
}
