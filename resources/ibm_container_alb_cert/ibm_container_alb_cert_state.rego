package ibmcloud.resources.state.ibm_container_alb_cert
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb_cert"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_alb_cert", "managed").resources[_]
}
cert_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cert_crn", null) |
        res := resources_map[_]
        true
     }
}
expires_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expires_on", null) |
        res := resources_map[_]
        true
     }
}
issuer_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "issuer_name", null) |
        res := resources_map[_]
        true
     }
}
cloud_cert_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_cert_instance_id", null) |
        res := resources_map[_]
        true
     }
}
cluster_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_id", null) |
        res := resources_map[_]
        true
     }
}
secret_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_name", null) |
        res := resources_map[_]
        true
     }
}
namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace", null) |
        res := resources_map[_]
        true
     }
}
persistence = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "persistence", null) |
        res := resources_map[_]
        true
     }
}
domain_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
