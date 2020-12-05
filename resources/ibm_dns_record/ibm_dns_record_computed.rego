package ibmcloud.resources.computed.ibm_dns_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_record"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_record").resources[_]
}
responsible_person = ret {
    ret := {res.address: object.get(res.attributes, "responsible_person", null) |
        res := resources_map[_]
        true
     }
}
minimum_ttl = ret {
    ret := {res.address: object.get(res.attributes, "minimum_ttl", null) |
        res := resources_map[_]
        true
     }
}
refresh = ret {
    ret := {res.address: object.get(res.attributes, "refresh", null) |
        res := resources_map[_]
        true
     }
}
expire = ret {
    ret := {res.address: object.get(res.attributes, "expire", null) |
        res := resources_map[_]
        true
     }
}
retry = ret {
    ret := {res.address: object.get(res.attributes, "retry", null) |
        res := resources_map[_]
        true
     }
}

