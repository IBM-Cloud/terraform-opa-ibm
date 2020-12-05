package ibmcloud.resources.after.ibm_dns_permitted_network
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_permitted_network"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dns_permitted_network").resources[_]
}
instance_id = ret {
    ret := {res.address: object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
zone_id = ret {
    ret := {res.address: object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
vpc_crn = ret {
    ret := {res.address: object.get(res.attributes, "vpc_crn", null) |
        res := resources_map[_]
        true
     }
}

