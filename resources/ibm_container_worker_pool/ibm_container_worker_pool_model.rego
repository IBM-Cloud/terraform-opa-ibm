package ibmcloud.resources.model.ibm_container_worker_pool
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_worker_pool"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_container_worker_pool").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_container_worker_pool", "managed").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
machine_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "machine_type", null) |
        res := resources_map[_]
        true
     }
}
worker_pool_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool_name", null) |
        res := resources_map[_]
        true
     }
}
entitlement = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entitlement", null) |
        res := resources_map[_]
        true
     }
}
hardware = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hardware", null) |
        res := resources_map[_]
        true
     }
}
disk_encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_encryption", null) |
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
size_per_zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size_per_zone", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}

