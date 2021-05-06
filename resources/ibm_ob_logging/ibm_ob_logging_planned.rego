package ibmcloud.resources.planned.ibm_ob_logging
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ob_logging"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_ob_logging").resources[_]
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
logdna_ingestion_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logdna_ingestion_key", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}

