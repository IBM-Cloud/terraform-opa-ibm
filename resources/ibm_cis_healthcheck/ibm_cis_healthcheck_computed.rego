package ibmcloud.resources.computed.ibm_cis_healthcheck
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_healthcheck"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_healthcheck").resources[_]
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
monitor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "monitor_id", null) |
        res := resources_map[_]
        true
     }
}
create_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_on", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}

