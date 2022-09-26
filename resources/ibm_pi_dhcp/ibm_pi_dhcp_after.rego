package ibmcloud.resources.after.ibm_pi_dhcp
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_dhcp"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pi_dhcp").resources[_]
}
pi_dns_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dns_server", null) |
        res := resources_map[_]
        true
     }
}
pi_dhcp_snat_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dhcp_snat_enabled", null) |
        res := resources_map[_]
        true
     }
}
pi_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cidr", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_id", null) |
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
pi_dhcp_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dhcp_name", null) |
        res := resources_map[_]
        true
     }
}

