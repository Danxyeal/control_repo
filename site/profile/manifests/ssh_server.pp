class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+AsWXggVgoifuRjg6b/36YXMcc9wAdTX8i7llIE2I14UTHZx8t9biCOfG0vGfEy8dTaq5Cnu5dOci81A32aMV314jHIQ5qcYm+IxoWIWRTH5LzOEdIfNkmi5O4M0McvzIVmqyiDuLDH0JXGfUhy3qC4fEee9FrYqiY8A2cdVGD8r/CUhBlNRY6aVCcijdIR3/pz3jQwJxdSiIVXsp+km2+w8vqO6zT9u3RcTnpMTPyolujT3nSC6kPDFnW67VmAQMa7QDQLULLnRxrLv4jflNQ8VkWBIKdTQIfjNYq5VqIGdcFG5wDmjHIsgWQlnGcjCAAA7cbWVNv79BJrFRNtpt',
  }
}
