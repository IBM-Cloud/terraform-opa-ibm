package ibmcloud.resources.computed.ibm_satellite_cluster
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_cluster"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_cluster").resources[_]
}
enable_config_admin = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_config_admin", null) |
        res := resources_map[_]
        true
     }
}
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}
public_service_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_service_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
private_service_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_service_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
ingress_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_secret", null) |
        res := resources_map[_]
        true
     }
}
private_service_endpoint_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_service_endpoint_enabled", null) |
        res := resources_map[_]
        true
     }
}
public_service_endpoint_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_service_endpoint_enabled", null) |
        res := resources_map[_]
        true
     }
}
default_worker_pool_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_worker_pool_labels", null) |
        res := resources_map[_]
        true
     }
}
host_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_labels", null) |
        res := resources_map[_]
        true
     }
}
master_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "master_url", null) |
        res := resources_map[_]
        true
     }
}
service_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_subnet", null) |
        res := resources_map[_]
        true
     }
}
master_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "master_status", null) |
        res := resources_map[_]
        true
     }
}
pod_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pod_subnet", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
ingress_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_hostname", null) |
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
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
kube_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kube_version", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}

