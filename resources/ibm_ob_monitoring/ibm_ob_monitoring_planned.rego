package ibmcloud.resources.planned.ibm_ob_monitoring
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ob_monitoring"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_ob_monitoring").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
sysdig_access_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sysdig_access_key", null) |
        res := resources_map[_]
        true
     }
}
private_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_endpoint", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}

