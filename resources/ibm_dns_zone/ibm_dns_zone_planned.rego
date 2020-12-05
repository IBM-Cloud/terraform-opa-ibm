package ibmcloud.resources.planned.ibm_dns_zone
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_zone"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_zone").resources[_]
}
label = ret {
    ret := {res.address: object.get(res.attributes, "label", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {res.address: object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}

