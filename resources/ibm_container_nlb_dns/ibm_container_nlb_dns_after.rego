package ibmcloud.resources.after.ibm_container_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_nlb_dns"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_nlb_dns").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
nlb_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_ips", null) |
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
nlb_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_host", null) |
        res := resources_map[_]
        true
     }
}

