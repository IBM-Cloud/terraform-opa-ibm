package ibmcloud.resources.state.data.ibm_container_cluster_worker
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster_worker"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_cluster_worker", "data").resources[_]
}
worker_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_id", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
private_vlan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan", null) |
        res := resources_map[_]
        true
     }
}
public_vlan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan", null) |
        res := resources_map[_]
        true
     }
}
private_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ip", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
account_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_guid", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
public_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
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
