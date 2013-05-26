require 'chefspec'

describe 'aria2::default' do
  let(:chef_runner) do
    cb_path = [Pathname.new(File.join(File.dirname(__FILE__), '..', '..')).cleanpath.to_s, 'spec/support/cookbooks']
    ChefSpec::ChefRunner.new(:cookbook_path => cb_path)
  end

  let(:chef_run) do
    chef_runner.converge 'aria2::default'
  end
  
  it 'installs aria2' do
    expect(chef_run).to install_package 'aria2'
  end
end
