package ibmcloud.resources.planned.ibm_hardware_firewall_shared
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_hardware_firewall_shared"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_hardware_firewall_shared").resources[_]
}
firewall_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}
virtual_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_instance_id", null) |
        res := resources_map[_]
        true
     }
}
hardware_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hardware_instance_id", null) |
        res := resources_map[_]
        true
     }
}

