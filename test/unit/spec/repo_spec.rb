require 'chefspec'
require_relative 'spec_helper'

describe 'ele-apt::repo' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new(step_into: ['aptly']).converge(described_recipe) }

  it 'creates a directory with an explicit action' do
    expect(chef_run).to create_directory('/data/aptly')
  end

  it 'creates a aptly repository' do
    expect(chef_run).to add_aptly_repo('aptly')
  end
end
