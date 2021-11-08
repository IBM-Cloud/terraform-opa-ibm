package ibmcloud.resources.after.ibm_cm_offering_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_offering_instance"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cm_offering_instance").resources[_]
}
kind_format = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kind_format", null) |
        res := resources_map[_]
        true
     }
}
catalog_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_id", null) |
        res := resources_map[_]
        true
     }
}
cluster_region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_region", null) |
        res := resources_map[_]
        true
     }
}
cluster_all_namespaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_all_namespaces", null) |
        res := resources_map[_]
        true
     }
}
channel = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "channel", null) |
        res := resources_map[_]
        true
     }
}
wait_until_successful = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_until_successful", null) |
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
offering_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_id", null) |
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
cluster_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_id", null) |
        res := resources_map[_]
        true
     }
}
cluster_namespaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_namespaces", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
install_plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "install_plan", null) |
        res := resources_map[_]
        true
     }
}

