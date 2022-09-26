package ibmcloud.resources.after.ibm_cis_mtls
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtls"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_mtls").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
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
associated_hostnames = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "associated_hostnames", null) |
        res := resources_map[_]
        true
     }
}

