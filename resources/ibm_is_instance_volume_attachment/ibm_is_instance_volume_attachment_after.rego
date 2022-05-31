package ibmcloud.resources.after.ibm_is_instance_volume_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_volume_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_volume_attachment").resources[_]
}
delete_volume_on_attachment_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_volume_on_attachment_delete", null) |
        res := resources_map[_]
        true
     }
}
volume_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_name", null) |
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
encryption_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_key", null) |
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
volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume", null) |
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
snapshot = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "snapshot", null) |
        res := resources_map[_]
        true
     }
}
delete_volume_on_instance_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_volume_on_instance_delete", null) |
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
profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile", null) |
        res := resources_map[_]
        true
     }
}

