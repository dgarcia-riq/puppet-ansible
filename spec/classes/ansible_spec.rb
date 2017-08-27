require 'spec_helper'

describe 'ansible' do
  it { is_expected.to compile.with_all_deps }

  it { should contain_class('ansible') }
  it {
    should contain_class('ansible::install')
      .that_comes_before('Class[ansible::config]')
  }
  it { should contain_class('ansible::config') }

  describe 'ansible::install' do
    it { should contain_package('ansible') }
  end

  describe 'ansible::config' do
    it { should contain_file('/etc/ansible').with_ensure('directory') }
    it { should contain_file('/etc/ansible').with_mode('0755') }

    it { should contain_file('/etc/ansible/ansible.cfg').with_ensure('file') }
    it { should contain_file('/etc/ansible/ansible.cfg').with_mode('0644') }

    it { should contain_concat('/etc/ansible/hosts').with_ensure('present') }
    it { should contain_concat('/etc/ansible/hosts').with_mode('0644') }
    it { should contain_concat('/etc/ansible/hosts').with_warn(true) }
  end
end
