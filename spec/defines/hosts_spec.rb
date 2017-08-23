require 'spec_helper'

describe 'ansible::hosts' do

    let(:title) { 'webservers' }

    let(:params) { {
        entrys => [
          '192.168.0.1',
          '192.168.0.2'
        ]
    } }
end
