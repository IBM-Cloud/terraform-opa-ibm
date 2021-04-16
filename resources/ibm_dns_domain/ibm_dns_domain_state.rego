package ibmcloud.resources.state.ibm_dns_domain
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_domain"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_domain", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
serial = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "serial", null) |
        res := resources_map[_]
        true
     }
}
update_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_date", null) |
        res := resources_map[_]
        true
     }
}
target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
