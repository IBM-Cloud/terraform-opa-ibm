package ibmcloud.resources.computed.ibm_lb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb").resources[_]
}
ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_id", null) |
        res := resources_map[_]
        true
     }
}
ssl_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl_enabled", null) |
        res := resources_map[_]
        true
     }
}

