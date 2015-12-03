require 'spec_helper'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe 'apt-get' do
  describe package('git') do
    it { should be_installed }
  end
end
