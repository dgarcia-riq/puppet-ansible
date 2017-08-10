## Class to install core packages and ansible
class ansible::install {
#  $rhel_packages = [ 'epel-release','python','PyYAML','libtomcrypt','libtommath','libyaml','python-babel','python-httplib2','python-jinja2','python-keyczar','python-markupsafe','python-six','python2-crypto','python2-ecdsa','python2-paramiko','gcc', 'gmp-devel','sshpass', 'python2-pyasn1','python34','python-pip']
#  package { $rhel_packages:
#    ensure => 'latest',
#  }
#  -> package { 'ansible':
#    ensure      => 'present',
#    provider    => 'pip',
#    upgradeable => true,
#  }
  #$ubuntu_packages = [ 'python','PyYAML','libtomcrypt','libtommath','libyaml','python-babel','python-httplib2','python-jinja2','python-keyczar','python-markupsafe','python-six','python2-crypto','python2-ecdsa','python2-paramiko','gcc', 'gmp-devel','sshpass', 'python2-pyasn1','python34','python-pip']
  $ubuntu_packages = ['python','python3.5','python-pip']
  exec {'/usr/bin/apt update':}
  -> package { $ubuntu_packages:
    ensure => 'latest',
  }
  -> package { 'ansible':
    ensure      => 'present',
    provider    => 'pip',
    #upgradeable => true,
  }
