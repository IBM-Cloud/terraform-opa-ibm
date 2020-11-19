package ibmcloud.resources.state.data.ibm_container_cluster_versions
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_container_cluster_versions"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_cluster_versions", "data").resources[_]
}
valid_openshift_versions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "valid_openshift_versions", null) |
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
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
valid_kube_versions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "valid_kube_versions", null) |
        res := resources_map[_]
        true
     }
}
