package ibmcloud.resources.planned.ibm_is_volume
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_volume"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_volume").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
encryption_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_key", null) |
        res := resources_map[_]
        true
     }
}
capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "capacity", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile", null) |
        res := resources_map[_]
        true
     }
}
iops = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iops", null) |
        res := resources_map[_]
        true
     }
}
delete_all_snapshots = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_all_snapshots", null) |
        res := resources_map[_]
        true
     }
}

