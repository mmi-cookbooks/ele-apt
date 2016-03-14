require 'chefspec'
require_relative 'spec_helper'

describe 'ele-apt::default' do
  before { stub_resources }

  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['lsb']['codename'] = 'trusty'
    end.converge(described_recipe)
  end

  it 'adds an apt repository' do
    expect(chef_run).to add_apt_repository('intapt')
  end
end
