require 'spec_helper'

describe 'ansible' do
  let(:facts) do
    {
      'operatingsystem' => 'CentOS',
      'os' => {
        'family' => 'RedHat',
      },
    }
  end

  it { is_expected.to compile.with_all_deps }

  it { is_expected.to contain_class('ansible') }
  it {
    is_expected.to contain_class('ansible::install')
      .that_comes_before('Class[ansible::config]')
  }
  it { is_expected.to contain_class('ansible::config') }

  describe 'ansible::install' do
    it { is_expected.to contain_package('ansible') }
  end

  describe 'ansible::config' do
    it { is_expected.to contain_file('/etc/ansible').with_ensure('directory') }
    it { is_expected.to contain_file('/etc/ansible').with_mode('0755') }

    it { is_expected.to contain_file('/etc/ansible/ansible.cfg').with_ensure('file') }
    it { is_expected.to contain_file('/etc/ansible/ansible.cfg').with_mode('0644') }

    it { is_expected.to contain_concat('/etc/ansible/hosts').with_ensure('present') }
    it { is_expected.to contain_concat('/etc/ansible/hosts').with_mode('0644') }
    it { is_expected.to contain_concat('/etc/ansible/hosts').with_warn(true) }
  end
end
