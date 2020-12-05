package ibmcloud.resources.computed.ibm_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_firewall"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_firewall").resources[_]
}
location = ret {
    ret := {res.address: object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
primary_ip = ret {
    ret := {res.address: object.get(res.attributes, "primary_ip", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {res.address: object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {res.address: object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}

