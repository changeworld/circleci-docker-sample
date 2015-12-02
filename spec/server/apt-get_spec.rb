require 'spec_helper'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe 'apt-get' do
  describe package('build-essential') do
    it { should be_installed }
  end

  describe package('curl') do
    it { should be_installed }
  end

  describe package('git') do
    it { should be_installed }
  end

  describe package('libreadline-dev') do
    it { should be_installed }
  end

  describe package('libssl-dev') do
    it { should be_installed }
  end

  describe package('libyaml-dev') do
    it { should be_installed }
  end

  describe package('libxml2-dev') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end

  describe package('npm') do
    it { should be_installed }
  end

  describe package('zlib1g-dev') do
    it { should be_installed }
  end

  # Update-alternatives nodojs to node
  describe command('which node') do
    its(:exit_status) { should eq 0 }
  end

  # Update npm to the latest version?
  describe command('npm -v') do
    its(:stdout) { should_not match /1.3.10/ }
  end
end
