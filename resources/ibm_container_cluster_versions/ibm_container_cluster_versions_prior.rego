package ibmcloud.resources.prior.ibm_container_cluster_versions
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster_versions"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_cluster_versions").resources[_]
}
account_guid = ret {
    ret := {res.address: object.get(res.attributes, "account_guid", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {res.address: object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {res.address: object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}

