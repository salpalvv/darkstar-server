require 'spec_helper'

describe 'localhost' do
  include_examples 'darkstar::init'
  include_examples 'firewall::init'
  include_examples 'mysql::init'
end