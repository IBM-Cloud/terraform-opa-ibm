package ibmcloud.resources.state.ibm_container_cluster
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_cluster", "managed").resources[_]
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
entitlement = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entitlement", null) |
        res := resources_map[_]
        true
     }
}
no_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "no_subnet", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
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
retry_patch_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retry_patch_version", null) |
        res := resources_map[_]
        true
     }
}
default_pool_size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_pool_size", null) |
        res := resources_map[_]
        true
     }
}
billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing", null) |
        res := resources_map[_]
        true
     }
}
wait_for_worker_update = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_for_worker_update", null) |
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
gateway_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway_enabled", null) |
        res := resources_map[_]
        true
     }
}
worker_num = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_num", null) |
        res := resources_map[_]
        true
     }
}
patch_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "patch_version", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
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
ingress_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_hostname", null) |
        res := resources_map[_]
        true
     }
}
webhook = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "webhook", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
account_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_guid", null) |
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
public_service_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_service_endpoint", null) |
        res := resources_map[_]
        true
     }
}
workers_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workers_info", null) |
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
update_all_workers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_all_workers", null) |
        res := resources_map[_]
        true
     }
}
is_trusted = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_trusted", null) |
        res := resources_map[_]
        true
     }
}
albs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "albs", null) |
        res := resources_map[_]
        true
     }
}
private_service_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_service_endpoint", null) |
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
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
kms_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kms_config", null) |
        res := resources_map[_]
        true
     }
}
wait_till = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_till", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
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
subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_id", null) |
        res := resources_map[_]
        true
     }
}
force_delete_storage = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete_storage", null) |
        res := resources_map[_]
        true
     }
}
wait_time_minutes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_time_minutes", null) |
        res := resources_map[_]
        true
     }
}
machine_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "machine_type", null) |
        res := resources_map[_]
        true
     }
}
hardware = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hardware", null) |
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
ingress_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_secret", null) |
        res := resources_map[_]
        true
     }
}
worker_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pools", null) |
        res := resources_map[_]
        true
     }
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
server_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_url", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
disk_encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_encryption", null) |
        res := resources_map[_]
        true
     }
}
