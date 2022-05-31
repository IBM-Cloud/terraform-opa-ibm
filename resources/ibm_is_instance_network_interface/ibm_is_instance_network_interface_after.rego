package ibmcloud.resources.after.ibm_is_instance_network_interface
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_network_interface"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_network_interface").resources[_]
}
allow_ip_spoofing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_ip_spoofing", null) |
        res := resources_map[_]
        true
     }
}
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
primary_ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
primary_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_ip", null) |
        res := resources_map[_]
        true
     }
}
security_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_groups", null) |
        res := resources_map[_]
        true
     }
}
floating_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "floating_ip", null) |
        res := resources_map[_]
        true
     }
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}

