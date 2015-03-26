#
# Cookbook Name:: apache2
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache2::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new
      runner.converge(described_recipe)
    end

  it 'installs apache2' do
    expect(chef_run).to install_package('apache2')
  end

  it 'enables and starts apache2' do
    expect(chef_run).to enable_service('apache2')
    expect(chef_run).to start_service('apache2')
  end


  end
end
