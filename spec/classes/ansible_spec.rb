require 'spec_helper'

describe 'ansible', :type => :class do

  it { is_expected.to compile.with_all_deps }
  it { should contain_class ('ansible::install').that_comes_before('Class[ansible::config]')}
  it { should contain_class ('ansible::config')}

end