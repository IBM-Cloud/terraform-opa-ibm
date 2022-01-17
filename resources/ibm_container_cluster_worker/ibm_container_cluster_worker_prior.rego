package ibmcloud.resources.prior.ibm_container_cluster_worker
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster_worker"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_cluster_worker").resources[_]
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
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
worker_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_id", null) |
        res := resources_map[_]
        true
     }
}

