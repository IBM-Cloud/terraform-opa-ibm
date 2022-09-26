package ibmcloud.resources.state.ibm_container_vpc_worker_pool
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_worker_pool"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_vpc_worker_pool", "managed").resources[_]
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
vpc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_id", null) |
        res := resources_map[_]
        true
     }
}
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}
host_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_pool_id", null) |
        res := resources_map[_]
        true
     }
}
crk = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crk", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
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
taints = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "taints", null) |
        res := resources_map[_]
        true
     }
}
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
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
kms_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kms_instance_id", null) |
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
worker_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool_id", null) |
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
