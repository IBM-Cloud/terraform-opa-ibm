package ibmcloud.resources.computed.ibm_pi_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_key").resources[_]
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}
key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_id", null) |
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
ssh_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssh_key", null) |
        res := resources_map[_]
        true
     }
}

