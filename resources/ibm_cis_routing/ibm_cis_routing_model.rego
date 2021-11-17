package ibmcloud.resources.model.ibm_cis_routing
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_routing"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_routing").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_routing", "managed").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
smart_routing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "smart_routing", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}

