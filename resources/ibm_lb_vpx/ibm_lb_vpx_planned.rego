package ibmcloud.resources.planned.ibm_lb_vpx
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_vpx").resources[_]
}
speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "speed", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_count", null) |
        res := resources_map[_]
        true
     }
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
public_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_subnet", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
private_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_subnet", null) |
        res := resources_map[_]
        true
     }
}

