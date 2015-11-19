require 'spec_helper'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe 'apt-get' do
  describe package('curl') do
    it { should be_installed }
  end

  describe package('default-jdk') do
    it { should be_installed }
  end

  describe package('git') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end

  describe package('npm') do
    it { should be_installed }
  end

  describe package('scala') do
    it { should be_installed }
  end

  describe package('wget') do
    it { should be_installed }
  end
end
