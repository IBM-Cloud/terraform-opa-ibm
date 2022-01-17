package ibmcloud.resources.state.data.ibm_pi_tenant
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_tenant"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_tenant", "data").resources[_]
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
tenant_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_name", null) |
        res := resources_map[_]
        true
     }
}
cloud_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_instances", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}
