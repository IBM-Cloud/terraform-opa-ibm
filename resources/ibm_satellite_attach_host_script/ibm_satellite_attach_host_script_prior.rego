package ibmcloud.resources.prior.ibm_satellite_attach_host_script
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_attach_host_script"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_satellite_attach_host_script").resources[_]
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
host_provider = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_provider", null) |
        res := resources_map[_]
        true
     }
}
script_dir = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "script_dir", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}

