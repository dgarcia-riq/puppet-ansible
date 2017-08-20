require 'spec_helper'

describe 'ansible', :type => :class do

  it { is_expected.to compile.with_all_deps }
  it { should contain_class ('ansible::install').that_comes_before('Class[ansible::config]')}
  it { should contain_class ('ansible::config')}

  context 'ansible::install defaults' do
    it { is_expected.to contain_package('python')}
    it { is_expected.to contain_package('epel-release')}
    it { is_expected.to contain_package('python-pip')}
  end

end