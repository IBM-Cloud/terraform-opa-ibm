package ibmcloud.resources.state.data.ibm_dns_domain
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_domain"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_domain", "data").resources[_]
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
