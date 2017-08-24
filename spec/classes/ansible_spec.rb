require 'spec_helper'

describe 'ansible' do

  context 'with defaults for all parameters' do
    let (:facts) do {
      :kernel => 'Linux',
      :osfamily => 'Redhat',
      :operatingsystem => 'CentOS',
      :operatingsystemmajrelease => '7',
    }
    end
  end

  it { is_expected.to contain_class('ansible')}
  it { is_expected.to contain_class('ansible::install').that_comes_before('Class[ansible::config]') }
  it { is_expected.to contain_class('ansible::config') }
  it { is_expected.to contain_package('ansible').with(
    'ensure'   => 'latest',
  )}

  it { is_expected.to contain_file('/etc/ansible').with(
    'ensure' => 'directory',
    'owner'  => 'root',
    'group'  => 'root',
    'mode'   => '0755'

    )}
  it { is_expected.to contain_file('/etc/ansible/ansible.cfg').with(
    'ensure' => 'file',
    'owner'  => 'root',
    'group'  => 'root',
    'mode'   => '0644'
  ) }

end
