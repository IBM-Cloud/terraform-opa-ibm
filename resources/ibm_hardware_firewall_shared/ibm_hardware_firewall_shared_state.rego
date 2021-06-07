package ibmcloud.resources.state.ibm_hardware_firewall_shared
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hardware_firewall_shared"
}

resources_map[attr]{
    attr := state.get_resources("ibm_hardware_firewall_shared", "managed").resources[_]
}
billing_item_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_item_id", null) |
        res := resources_map[_]
        true
     }
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
