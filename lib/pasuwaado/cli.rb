require 'pasuwaado'
require 'thor'

module Pasuwaado
  class CLI < Thor
    desc 'pass <url>', 'Get password for site'
    def pass(url)
      say "looking up pass for #{url}", :blue
      result = "\ndunya35#{url.match(/\/\/w{3}?\.?(.+)\./).captures.first.capitalize}\n"
      say result, :green
    end
  end
end
