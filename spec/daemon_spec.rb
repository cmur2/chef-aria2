require 'chefspec'

describe 'aria2::daemon' do
  let(:chef_runner) do
    cb_path = [Pathname.new(File.join(File.dirname(__FILE__), '..', '..')).cleanpath.to_s, 'spec/support/cookbooks']
    ChefSpec::ChefRunner.new(:cookbook_path => cb_path)
  end

  let(:chef_run) do
    chef_runner.converge 'aria2::daemon'
  end
  
  it 'creates init script' do
    expect(chef_run).to create_file_with_content '/etc/init.d/aria2', ''
  end
  
  it 'create config file' do
    expect(chef_run).to create_file_with_content '/etc/aria2.conf', ''
  end
  
  it 'enables and starts aria2' do
    expect(chef_run).to start_service 'aria2'
    expect(chef_run).to set_service_to_start_on_boot 'aria2'
  end
end
