type IAY::Vsphere::Compute_Cluster::Resource = Struct[
  {
    datacenter_id
      => IAY::Vsphere::Compute_Cluster::Datacenter_Id,
    name
      => IAY::Vsphere::Compute_Cluster::Name,
    Optional[custom_attributes]
      => IAY::Vsphere::Compute_Cluster::Custom_Attributes,
    Optional[data]
      => IAY::Vsphere::Compute_Cluster::Data,
    Optional[data_hash]
      => IAY::Vsphere::Compute_Cluster::Data_Hash,
    Optional[dpm_automation_level]
      => IAY::Vsphere::Compute_Cluster::DPM_Automation_Level,
    Optional[dpm_enabled]
      => IAY::Vsphere::Compute_Cluster::DPM_Enabled,
    Optional[dpm_threshold]
      => IAY::Vsphere::Compute_Cluster::DPM_Threshold,
    Optional[drs_advanced_options]
      => IAY::Vsphere::Compute_Cluster::DRS_Advanced_Options,
    Optional[drs_automation_level]
      => IAY::Vsphere::Compute_Cluster::DRS_Automation_Level,
    Optional[drs_enable_predictive_drs]
      => IAY::Vsphere::Compute_Cluster::DRS_Enable_Predictive_DRS,
    Optional[drs_enable_vm_overrides]
      => IAY::Vsphere::Compute_Cluster::DRS_Enable_VM_Overrides,
    Optional[drs_enabled]
      => IAY::Vsphere::Compute_Cluster::DRS_Enabled,
    Optional[drs_migration_threshold]
      => IAY::Vsphere::Compute_Cluster::DRS_Migration_Threshold,
    Optional[folder]
      => IAY::Vsphere::Compute_Cluster::Folder,
    Optional[force_evacuate_on_destroy]
      => IAY::Vsphere::Compute_Cluster::Force_Evacuate_On_Destroy,
    Optional[ha_admission_control_failover_host_system_ids]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Failover_Host_System_Ids,
    Optional[ha_admission_control_host_failure_tolerance]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Host_Failure_Tolerance,
    Optional[ha_admission_control_performance_tolerance]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Performance_Tolerance,
    Optional[ha_admission_control_policy]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Policy,
    Optional[ha_admission_control_resource_percentage_auto_compute]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Resource_Percentage_Auto_Compute,
    Optional[ha_admission_control_resource_percentage_cpu]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Resource_Percentage_CPU,
    Optional[ha_admission_control_resource_percentage_memory]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Resource_Percentage_CPU,
    Optional[ha_admission_control_slot_policy_explicit_cpu]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Slot_Policy_Explicit_CPU,
    Optional[ha_admission_control_slot_policy_explicit_memory]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Slot_Policy_Explicit_Memory,
    Optional[ha_admission_control_slot_policy_use_explicit_size]
      => IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Slot_Policy_Use_Explicit_Size,
    Optional[ha_advanced_options]
      => IAY::Vsphere::Compute_Cluster::HA_Advanced_Options,
    Optional[ha_datastore_apd_recovery_action]
      => IAY::Vsphere::Compute_Cluster::HA_Datastore_APD_Recovery_Action,
    Optional[ha_datastore_apd_response]
      => IAY::Vsphere::Compute_Cluster::HA_Datastore_APD_Response,
    Optional[ha_datastore_apd_response_delay]
      => IAY::Vsphere::Compute_Cluster::HA_Datastore_APD_Response_Delay,
    Optional[ha_datastore_pdl_response]
      => IAY::Vsphere::Compute_Cluster::HA_Datastore_PDL_Response,
    Optional[ha_enabled]
      => IAY::Vsphere::Compute_Cluster::HA_Enabled,
    Optional[ha_heartbeat_datastore_ids]
      => IAY::Vsphere::Compute_Cluster::HA_Heartbeat_Datastore_Ids,
    Optional[ha_heartbeat_datastore_policy]
      => IAY::Vsphere::Compute_Cluster::HA_Heartbeat_Datastore_Policy,
    Optional[ha_host_isolation_response]
      => IAY::Vsphere::Compute_Cluster::HA_Host_Isolation_Response,
    Optional[ha_host_monitoring]
      => IAY::Vsphere::Compute_Cluster::HA_Host_Monitoring,
    Optional[ha_vm_component_protection]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Component_Protection,
    Optional[ha_vm_dependency_restart_condition]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Dependency_Restart_Condition,
    Optional[ha_vm_failure_interval]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Failure_Interval,
    Optional[ha_vm_maximum_failure_window]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Maximum_Failure_Window,
    Optional[ha_vm_maximum_resets]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Maximum_Resets,
    Optional[ha_vm_minimum_uptime]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Minimum_Uptime,
    Optional[ha_vm_monitoring]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Monitoring,
    Optional[ha_vm_restart_additional_delay]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Restart_Additional_Delay,
    Optional[ha_vm_restart_priority]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Restart_Priority,
    Optional[ha_vm_restart_timeout]
      => IAY::Vsphere::Compute_Cluster::HA_VM_Restart_Timeout,
    Optional[host_cluster_exit_timeout]
      => IAY::Vsphere::Compute_Cluster::Host_Cluster_Exit_Timeout,
    Optional[host_system_ids]
      => IAY::Vsphere::Compute_Cluster::Host_System_Ids,
    Optional[proactive_ha_automation_level]
      => IAY::Vsphere::Compute_Cluster::Proactive_HA_Automation_Level,
    Optional[proactive_ha_enabled]
      => IAY::Vsphere::Compute_Cluster::Proactive_HA_Enabled,
    Optional[proactive_ha_moderate_remediation]
      => IAY::Vsphere::Compute_Cluster::Proactive_HA_Moderate_Remediation,
    Optional[proactive_ha_provider_ids]
      => IAY::Vsphere::Compute_Cluster::Proactive_HA_Provider_Ids,
    Optional[proactive_ha_severe_remediation]
      => IAY::Vsphere::Compute_Cluster::Proactive_HA_Severe_Remediation,
    Optional[resource]
      => IAY::Vsphere::Compute_Cluster::Resource,
    Optional[resource_hash]
      => IAY::Vsphere::Compute_Cluster::Resource_Hash,
    Optional[tags]
      => IAY::Vsphere::Compute_Cluster::Tags,
  }
]
