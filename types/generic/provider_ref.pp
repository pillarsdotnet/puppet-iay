# A provider reference (root or alias).

type IAY::Generic::Provider_Ref = Variant[
  IAY::Generic::Provider,
  Pattern[
    /\A(?:acme|alicloud|archive|arukas|aws|azure|azuread|azurestack|bitbucket|brightbox|clc|chef|circonus|ciscoasa|cloudflare|cloudscale|cloudstack|cobbler|consul|datadog|do|dns|dnsimple|dme|docker|dyn|external|bigip|fastly|flexibleengine|fortios|github|gitlab|google|grafana|gridscale|hedvig|helm|heroku|hcloud|http|huaweicloud|icinga2|ignition|influxdb|jdcloud|kubernetes|librato|linode|local|logentries|logicmonitor|mailgun|mysql|ncloud|netlify|newrelic|nomad|ns1|null|nutanix|oneandone|openstack|opentelekomcloud|opsgenie|oci|oraclepaas|opc|ovh|packet|pagerduty|panos|postgresql|powerdns|profitbricks|rabbitmq|rancher|rancher2|random|rightscale|rundeck|runscope|scaleway|selectel|skytap|softlayer|spotinst|statuscake|telefonicaopencloud|template|tencentcloud|terraform|tfe|tls|triton|ucloud|ultradns|vault|nsxt|vcd|vra7|vsphere|yandex)\.[^.]+\z/  # lint:ignore:140chars
  ],
]
