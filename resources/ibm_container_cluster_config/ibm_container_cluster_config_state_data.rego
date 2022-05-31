package ibmcloud.resources.state.data.ibm_container_cluster_config
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster_config"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_cluster_config", "data").resources[_]
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
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
cluster_name_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_name_id", null) |
        res := resources_map[_]
        true
     }
}
admin = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admin", null) |
        res := resources_map[_]
        true
     }
}
download = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "download", null) |
        res := resources_map[_]
        true
     }
}
config_file_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config_file_path", null) |
        res := resources_map[_]
        true
     }
}
admin_certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admin_certificate", null) |
        res := resources_map[_]
        true
     }
}
host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host", null) |
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
config_dir = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config_dir", null) |
        res := resources_map[_]
        true
     }
}
calico_config_file_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "calico_config_file_path", null) |
        res := resources_map[_]
        true
     }
}
admin_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admin_key", null) |
        res := resources_map[_]
        true
     }
}
ca_certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ca_certificate", null) |
        res := resources_map[_]
        true
     }
}
network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network", null) |
        res := resources_map[_]
        true
     }
}
token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "token", null) |
        res := resources_map[_]
        true
     }
}
