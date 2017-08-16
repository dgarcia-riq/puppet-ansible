# Class: ansible
# ===========================
#
# Full description of class ansible here.
#
# Parameters
# -----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an Optional[Array]."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
# External Node Classifier as a comma separated list of hostnames." (Note,
# global variables should be avoided in favor of class parameters as
# of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#  class {   ansible  :
#   servers => [   pool.ntp.org  ,   ntp.local.company.com   ],
#  }
#
# Authors
# -------
#
# Edgar Silva <edgarsilva948@gmail.com>
# Vincius Xavier <viniciusxavierbove@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class ansible (
Optional[Integer] $gather_timeout,
Optional[Integer] $accelerate_timeout,
Optional[Integer] $accelerate_port,
Optional[Integer] $command_timeout,
Optional[Integer] $connect_retry_timeout,
Optional[Integer] $connect_timeout,
Optional[Integer] $context,
Optional[Integer] $forks,
Optional[Integer] $poll_interval,
Optional[Integer] $remote_port,
Optional[Integer] $timeout,
Optional[Integer] $max_diff_size,
Optional[Integer] $nocows,
Optional[Integer] $nocolor,
Optional[Integer] $var_compression_level,
Optional[String] $sudo_flags,
Optional[String] $cow_selection,
Optional[String] $cow_whitelist,
Optional[String] $action_plugins,
Optional[String] $cache_plugins,
Optional[String] $callback_plugins,
Optional[String] $diff_add,
Optional[String] $special_context_filesystems,
Optional[String] $changed,
Optional[String] $unreachable,
Optional[String] $debug,
Optional[String] $error,
Optional[String] $warn,
Optional[String] $verbose,
Optional[String] $highlight,
Optional[String] $deprecate,
Optional[String] $skip,
Optional[String] $connection_plugins,
Optional[String] $lookup_plugins,
Optional[String] $inventory_plugins,
Optional[String] $vars_plugins,
Optional[String] $filter_plugins,
Optional[String] $diff_lines,
Optional[String] $diff_remove,
Optional[String] $test_plugins,
Optional[String] $terminal_plugins,
Optional[String] $strategy_plugins,
Optional[String] $strategy,
Optional[String] $ask_sudo_pass,
Optional[String] $remote_user,
Optional[String] $log_path,
Optional[String] $ok,
Optional[String] $name_module,
Optional[String] $executable,
Optional[String] $hash_behaviour,
Optional[String] $jinja2_extensions,
Optional[String] $private_key_file,
Optional[String] $vault_password_file,
Optional[String] $ansible_managed,
Optional[String] $scp_if_ssh,
Optional[String] $inventory,
Optional[String] $library,
Optional[String] $module_utils,
Optional[String] $local_tmp,
Optional[String] $transfer_method,
Optional[String] $sudo_user,
Optional[String] $inventory_ignore_extensions,
Optional[String] $transport,
Optional[String] $module_lang,
Optional[String] $gathering,
Optional[String] $gather_subset,
Optional[String] $host_key_checking,
Optional[String] $module_set_locale,
Optional[String] $roles_path,
Optional[String] $ask_pass,
Optional[String] $stdout_callback,
Optional[String] $callback_whitelist,
Optional[String] $inventory_enabled,
Optional[String] $sudo_exe,
Optional[String] $retry_files_save_path,
Optional[String] $control_path,
Optional[String] $become_user,
Optional[String] $squash_actions,
Optional[String] $become_method,
Optional[String] $control_path_dir,
Optional[String] $remote_tmp,
Optional[String] $ssh_args,
Optional[String] $fact_caching,
Optional[String] $module_compression,
Optional[Boolean] $bin_ansible_callbacks,
Optional[Boolean] $retry_files_enabled,
Optional[Boolean] $display_skipped_hosts,
Optional[Boolean] $become,
Optional[Boolean] $display_args_to_stdout,
Optional[Boolean] $error_on_undefined_vars,
Optional[Boolean] $pipelining,
Optional[Boolean] $system_warnings,
Optional[Boolean] $deprecation_warnings,
Optional[Boolean] $command_warnings,
Optional[Boolean] $no_log,
Optional[Boolean] $sftp_batch_mode,
Optional[Boolean] $always,
Optional[Boolean] $no_target_syslog,
Optional[Boolean] $allow_world_readable_tmpfiles,
Optional[Boolean] $merge_multiple_cli_flags,
Optional[Boolean] $show_custom_stats,
Optional[Boolean] $restrict_facts_namespace,
Optional[Boolean] $allow_unsafe_lookups,
Optional[Boolean] $accelerate_multi_key,
Optional[Boolean] $pty,
Optional[Boolean] $become_ask_pass,
Optional[Boolean] $any_errors_fatal,
Optional[Boolean] $record_host_keys,
Optional[Boolean] $task_includes_static,
Optional[Boolean] $host_key_auto_add,
Optional[Boolean] $look_for_keys,
Optional[Boolean] $libvirt_lxc_noseclabel,
Optional[Boolean] $handler_includes_static,
Optional[Boolean] $error_on_missing_handler,
Optional[Boolean] $private_role_vars,
Optional[Tuple] $network_group_modules,
Optional[Float] $accelerate_connect_timeout,
String $version,
String $confdir,
String $provider,
Array $packages,
String $package_name,
String $user,
String $group,
) {

include ::ansible::install
include ::ansible::config

Class['ansible::install']
-> Class['ansible::config']

}
