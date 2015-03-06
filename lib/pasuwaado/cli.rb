require 'pasuwaado'
require 'thor'

module Pasuwaado
  class CLI < Thor
    desc 'Get password for site', ''
    def pass(url)
      result = "dunya386925#{url.match(/\/\/w{3}?\.?(.+)\./).captures.first.capitalize}"
      say result, :green
    end
  end
end
