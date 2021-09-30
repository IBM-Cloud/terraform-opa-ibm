package ibmcloud.resources.after.ibm_is_ipsec_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ipsec_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_ipsec_policy").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
encryption_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_algorithm", null) |
        res := resources_map[_]
        true
     }
}
pfs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pfs", null) |
        res := resources_map[_]
        true
     }
}
authentication_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "authentication_algorithm", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
key_lifetime = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_lifetime", null) |
        res := resources_map[_]
        true
     }
}

