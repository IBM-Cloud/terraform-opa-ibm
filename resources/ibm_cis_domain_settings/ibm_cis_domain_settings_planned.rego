package ibmcloud.resources.planned.ibm_cis_domain_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_domain_settings"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_domain_settings").resources[_]
}
websockets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "websockets", null) |
        res := resources_map[_]
        true
     }
}
challenge_ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "challenge_ttl", null) |
        res := resources_map[_]
        true
     }
}
minify = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minify", null) |
        res := resources_map[_]
        true
     }
}
waf = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "waf", null) |
        res := resources_map[_]
        true
     }
}
cname_flattening = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cname_flattening", null) |
        res := resources_map[_]
        true
     }
}
ipv6 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6", null) |
        res := resources_map[_]
        true
     }
}
hotlink_protection = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hotlink_protection", null) |
        res := resources_map[_]
        true
     }
}
true_client_ip_header = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "true_client_ip_header", null) |
        res := resources_map[_]
        true
     }
}
cipher = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cipher", null) |
        res := resources_map[_]
        true
     }
}
ssl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl", null) |
        res := resources_map[_]
        true
     }
}
automatic_https_rewrites = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "automatic_https_rewrites", null) |
        res := resources_map[_]
        true
     }
}
always_use_https = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "always_use_https", null) |
        res := resources_map[_]
        true
     }
}
http2 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "http2", null) |
        res := resources_map[_]
        true
     }
}
prefetch_preload = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "prefetch_preload", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
dnssec = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dnssec", null) |
        res := resources_map[_]
        true
     }
}
min_tls_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_tls_version", null) |
        res := resources_map[_]
        true
     }
}
opportunistic_encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "opportunistic_encryption", null) |
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
browser_check = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "browser_check", null) |
        res := resources_map[_]
        true
     }
}
pseudo_ipv4 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pseudo_ipv4", null) |
        res := resources_map[_]
        true
     }
}
security_header = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_header", null) |
        res := resources_map[_]
        true
     }
}
ip_geolocation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_geolocation", null) |
        res := resources_map[_]
        true
     }
}
server_side_exclude = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_side_exclude", null) |
        res := resources_map[_]
        true
     }
}
tls_client_auth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tls_client_auth", null) |
        res := resources_map[_]
        true
     }
}
mobile_redirect = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mobile_redirect", null) |
        res := resources_map[_]
        true
     }
}
image_load_optimization = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_load_optimization", null) |
        res := resources_map[_]
        true
     }
}
brotli = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "brotli", null) |
        res := resources_map[_]
        true
     }
}
response_buffering = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "response_buffering", null) |
        res := resources_map[_]
        true
     }
}
max_upload = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_upload", null) |
        res := resources_map[_]
        true
     }
}
image_size_optimization = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_size_optimization", null) |
        res := resources_map[_]
        true
     }
}
origin_error_page_pass_thru = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_error_page_pass_thru", null) |
        res := resources_map[_]
        true
     }
}
script_load_optimization = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "script_load_optimization", null) |
        res := resources_map[_]
        true
     }
}

