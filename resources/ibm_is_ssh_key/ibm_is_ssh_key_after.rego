package ibmcloud.resources.after.ibm_is_ssh_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ssh_key"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_ssh_key").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
public_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_key", null) |
        res := resources_map[_]
        true
     }
}

