package ibmcloud.resources.planned.ibm_cis_healthcheck
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_healthcheck"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_healthcheck").resources[_]
}
method = ret {
    ret := {res.address: object.get(res.attributes, "method", null) |
        res := resources_map[_]
        true
     }
}
follow_redirects = ret {
    ret := {res.address: object.get(res.attributes, "follow_redirects", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {res.address: object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {res.address: object.get(res.attributes, "path", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
interval = ret {
    ret := {res.address: object.get(res.attributes, "interval", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {res.address: object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
expected_body = ret {
    ret := {res.address: object.get(res.attributes, "expected_body", null) |
        res := resources_map[_]
        true
     }
}
allow_insecure = ret {
    ret := {res.address: object.get(res.attributes, "allow_insecure", null) |
        res := resources_map[_]
        true
     }
}
headers = ret {
    ret := {res.address: object.get(res.attributes, "headers", null) |
        res := resources_map[_]
        true
     }
}
expected_codes = ret {
    ret := {res.address: object.get(res.attributes, "expected_codes", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
timeout = ret {
    ret := {res.address: object.get(res.attributes, "timeout", null) |
        res := resources_map[_]
        true
     }
}
retries = ret {
    ret := {res.address: object.get(res.attributes, "retries", null) |
        res := resources_map[_]
        true
     }
}

