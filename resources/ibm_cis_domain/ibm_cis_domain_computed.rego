package ibmcloud.resources.computed.ibm_cis_domain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cis_domain"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_domain").resources[_]
}
paused = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "paused", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name_servers", null) |
        res := resources_map[_]
        true
     }
}
original_name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "original_name_servers", null) |
        res := resources_map[_]
        true
     }
}

