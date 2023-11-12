[masters]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_master || server_info.is_oracle_extramaster ~}
${server_info.all_details} ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]} -o ServerAliveInterval=30 -o ServerAliveCountMax=10"
%{ endif ~}
%{ endfor ~}
%{ for server_info in azservers ~}
%{ if server_info.is_azure_master || server_info.is_azure_extramaster ~}
${server_info.all_details} ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]} -o ServerAliveInterval=30 -o ServerAliveCountMax=10"
%{ endif ~}
%{ endfor ~} 

[dbs]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_db ~}
${server_info.all_details} ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]} -o ServerAliveInterval=30 -o ServerAliveCountMax=10"
%{ endif ~}
%{ endfor ~}
%{ for server_info in azservers ~}
%{ if server_info.is_azure_db ~}
${server_info.all_details} ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]} -o ServerAliveInterval=30 -o ServerAliveCountMax=10"
%{ endif ~}
%{ endfor ~}

