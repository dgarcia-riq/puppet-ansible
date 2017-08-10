require 'spec_helper'
describe 'ansible' do
  context 'with default values for all parameters' do
    it { should contain_class('ansible') }
  end
end
