# Puppet module: Ansible

### Table of Contents

1. [Module Description - What the module does and why it is useful](#module-description)
1. [Setup - The basics of getting started with ntp](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)


# Module description

The ansible module installs and configures the Ansible across a range of operating systems and distributions.

# Setup

## Beginning with ansible

`include '::ansible'` is enough to get you up and running. To pass in parameters specifying hosts entries use:

```puppet
  ansible::hosts { 'webservers':
    entrys  => [
      '172.16.0.10', 
      '172.16.0.20',
    ]
  }
```

## Usage

To control all the parameters of the configuration file use the main `::ansible` class. See the common usages below for examples.

### Install ansible

```puppet
  include '::ansible'
```

### Install and specifying hosts

```puppet
include '::ansible'

ansible::hosts { 'databases':
  entrys  => [
    '172.16.0.30', 
    '172.16.0.40',
    ]
}
```

### Change parameter in ansible.cfg

```puppet
class {'ansible':
  roles_path       => /srv/roles,
  timeout          => 30,
  logs_path        => /var/log/ansible.log,
  private_key_file => /etc/keys, 
}
```

# Reference

## Defined Types

* `hosts` - Set hosts entries

## Classes

### Public classes

* ansible: Main class, includes all other classes.

### Private classes

* ntp::install: Handles the packages.
* ntp::config: Handles the configuration file.

## Parameters

The following parameters are available in the `::ansible` class:

#### `gather_timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.


#### `accelerate_timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.


#### `accelerate_port`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.


#### `command_timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.


#### `connect_retry_timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `connect_timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `context`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `forks`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `poll_interval`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `remote_port`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `timeout`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `max_diff_size`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `nocows`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `nocolor`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `var_compression_level`

Optional.

Data type: Integer.

Description: 

Default value: `undef`.

#### `sudo_flags`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `cow_selection`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `cow_whitelist`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `action_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `cache_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `callback_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `diff_add`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `special_context_filesystems`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `changed`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `unreachable`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `debug`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `error`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `warn`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `verbose`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `highlight`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `deprecate`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `skip`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `connection_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `lookup_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `inventory_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `vars_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `filter_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `diff_lines`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `diff_remove`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `test_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `terminal_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `strategy_plugins`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `strategy`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `ask_sudo_pass`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `remote_user`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `ok`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `log_path`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `name_module`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `jinja2_extensions`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `vault_password_file`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `module_utils`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `ansible_managed`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `sudo_user`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `inventory_ignore_extensions`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `transfer_method`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `transport`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `gather_subset`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `module_set_locale`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `host_key_checking`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `stdout_callback`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `gathering`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `roles_path`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `ask_pass`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `executable`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `sudo_exe`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `control_path`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `retry_files_save_path`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `squash_actions`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `become_method`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `remote_tmp`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `control_path_dir`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `ssh_args`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `module_compression`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `local_tmp`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `module_lang`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `inventory`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `hash_behaviour`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `library`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `private_key_file`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `callback_whitelist`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `become_user`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `inventory_enabled`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `fact_caching`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `scp_if_ssh`

Optional.

Data type: String.

Description: 

Default value: `undef`.

#### `display_skipped_hosts`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `retry_files_enabled`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `command_warnings`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `bin_ansible_callbacks`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `become`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `allow_world_readable_tmpfiles`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `system_warnings`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `display_args_to_stdout`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `pipelining`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `sftp_batch_mode`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `allow_unsafe_lookups`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `accelerate_multi_key`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `no_target_syslog`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `merge_multiple_cli_flags`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `become_ask_pass`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `pty`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `always`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `record_host_keys`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `show_custom_stats`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `any_errors_fatal`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `host_key_auto_add`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `libvirt_lxc_noseclabel`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `look_for_keys`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `task_includes_static`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `handler_includes_static`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `private_role_vars`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `error_on_missing_handler`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `error_on_undefined_vars`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `no_log`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `restrict_facts_namespace`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `deprecation_warnings`

Optional.

Data type: Boolean.

Description: 

Default value: `undef`.

#### `network_group_modules`

Optional.

Data type: Tuple.

Description: 

Default value: `undef`.

#### `accelerate_connect_timeout`

Optional.

Data type: Float.

Description: 

Default value: `undef`.

#### `version`

Data type: String.

Description: 

Default value: `latest`.

#### `confdir`

Data type: String.

Description: 

Default value: `/etc/ansible`.

#### `package_name`

Data type: String.

Description: 

Default value: `ansible`.

#### `group`

Optional.

Data type: String.

Description: 

Default value: `root`.

#### `user`

Data type: String.

Description: 

Default value: `root`.

## Limitations

This module has been tested on [Centos 7.3, Ubuntu 16.04 and Debian 9].

## Contributors

* Edgar Silva <edgarsilva948@gmail.com>
* Vincius Xavier <viniciusxavierbove@gmail.com>

## Copyright
* Otherskins, Inc.