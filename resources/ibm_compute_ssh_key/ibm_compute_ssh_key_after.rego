package ibmcloud.resources.after.ibm_compute_ssh_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_ssh_key"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_compute_ssh_key").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
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
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}

