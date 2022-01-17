package ibmcloud.resources.state.data.ibm_scc_account_location
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_location"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_account_location", "data").resources[_]
}
results_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "results_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
compliance_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "compliance_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
analytics_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "analytics_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
si_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "si_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regions", null) |
        res := resources_map[_]
        true
     }
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
        res := resources_map[_]
        true
     }
}
main_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "main_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
governance_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "governance_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
