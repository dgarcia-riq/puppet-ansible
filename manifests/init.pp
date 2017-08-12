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
# e.g. "Specify one or more upstream ntp servers as an array."
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
Integer $gather_timeout,
Integer $accelerate_timeout,
Integer $accelerate_port,
Integer $command_timeout,
Integer $connect_retry_timeout,
Integer $connect_timeout,
Integer $context,
Integer $forks,
Integer $poll_interval,
Integer $remote_port,
Integer $timeout,
Integer $max_diff_size,
Integer $nocows,
Integer $nocolor,
Integer $var_compression_level,
String $sudo_flags,
String $cow_selection,
String $cow_whitelist,
String $action_plugins,
String $cache_plugins,
String $callback_plugins,
String $diff_add,
String $special_context_filesystems,
String $changed,
String $unreachable,
String $debug,
String $error,
String $warn,
String $verbose,
String $highlight,
String $deprecate,
String $skip,
String $connection_plugins,
String $lookup_plugins,
String $inventory_plugins,
String $vars_plugins,
String $filter_plugins,
String $diff_lines,
String $diff_remove,
String $test_plugins,
String $terminal_plugins,
String $strategy_plugins,
String $strategy,
String $ask_sudo_pass,
String $remote_user,
String $log_path,
String $ok,
#String $module_name,
String $executable,
String $hash_behaviour,
String $jinja2_extensions,
String $private_key_file,
String $vault_password_file,
String $ansible_managed,
String $scp_if_ssh,
String $inventory,
String $library,
String $module_utils,
String $local_tmp,
String $transfer_method,
String $sudo_user,
String $inventory_ignore_extensions,
String $transport,
String $module_lang,
String $gathering,
String $gather_subset,
String $host_key_checking,
String $module_set_locale,
String $roles_path,
String $ask_pass,
String $stdout_callback,
String $callback_whitelist,
String $inventory_enabled,
String $sudo_exe,
String $retry_files_save_path,
String $control_path,
String $become_user,
String $squash_actions,
String $become_method,
String $control_path_dir,
String $remote_tmp,
String $ssh_args,
String $fact_caching,
String $module_compression,
Boolean $bin_ansible_callbacks,
Boolean $retry_files_enabled,
Boolean $display_skipped_hosts,
Boolean $become,
Boolean $display_args_to_stdout,
Boolean $error_on_undefined_vars,
Boolean $pipelining,
Boolean $system_warnings,
Boolean $deprecation_warnings,
Boolean $command_warnings,
Boolean $no_log,
Boolean $sftp_batch_mode,
Boolean $always,
Boolean $no_target_syslog,
Boolean $allow_world_readable_tmpfiles,
Boolean $merge_multiple_cli_flags,
Boolean $show_custom_stats,
Boolean $restrict_facts_namespace,
Boolean $allow_unsafe_lookups,
Boolean $accelerate_multi_key,
Boolean $pty,
Boolean $become_ask_pass,
Boolean $any_errors_fatal,
Boolean $record_host_keys,
Boolean $task_includes_static,
Boolean $host_key_auto_add,
Boolean $look_for_keys,
Boolean $libvirt_lxc_noseclabel,
Boolean $handler_includes_static,
Boolean $error_on_missing_handler,
Boolean $private_role_vars,
Tuple $network_group_modules,
Array $hosts,
Float $accelerate_connect_timeout,

) {

include ::ansible::install
include ::ansible::config

Class['ansible::install']
-> Class['ansible::config']

}
