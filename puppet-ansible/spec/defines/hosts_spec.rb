require 'spec_helper'

describe 'ansible::hosts' do
  let(:title) { 'webservers' }

  let(:params) { { 'entrys' => ['192.168.0.1', '192.168.0.2'] } }

  it { is_expected.to contain_concat__fragment('webservers') }

  it { should compile }
end
