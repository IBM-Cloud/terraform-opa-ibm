package ibmcloud.resources.planned.ibm_pi_network_port_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network_port_attach"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_network_port_attach").resources[_]
}
pi_network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_name", null) |
        res := resources_map[_]
        true
     }
}
pi_network_port_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_port_description", null) |
        res := resources_map[_]
        true
     }
}
port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_id", null) |
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
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}

