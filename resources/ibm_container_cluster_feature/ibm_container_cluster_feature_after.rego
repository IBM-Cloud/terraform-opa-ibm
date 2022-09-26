package ibmcloud.resources.after.ibm_container_cluster_feature
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster_feature"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_cluster_feature").resources[_]
}
public_service_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_service_endpoint", null) |
        res := resources_map[_]
        true
     }
}
private_service_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_service_endpoint", null) |
        res := resources_map[_]
        true
     }
}
refresh_api_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "refresh_api_servers", null) |
        res := resources_map[_]
        true
     }
}
reload_workers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reload_workers", null) |
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
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}

