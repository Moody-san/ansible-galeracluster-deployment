[masters]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_master || server_info.is_oracle_extramaster ~}
${server_info.all_details} ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]}"
%{ endif ~}
%{ endfor ~}
%{ for server_info in azservers ~}
%{ if server_info.is_azure_master || server_info.is_azure_extramaster ~}
${server_info.all_details} ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]}"
%{ endif ~}
%{ endfor ~} 

[dbs]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_db ~}
${server_info.all_details} ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]}"
%{ endif ~}
%{ endfor ~}
%{ for server_info in azservers ~}
%{ if server_info.is_azure_db ~}
${server_info.all_details} ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]}"
%{ endif ~}
%{ endfor ~}

