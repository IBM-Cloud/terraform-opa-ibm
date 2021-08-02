package ibmcloud.resources.after.ibm_is_vpc_address_prefix
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_address_prefix"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpc_address_prefix").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cidr", null) |
        res := resources_map[_]
        true
     }
}
is_default = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_default", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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

