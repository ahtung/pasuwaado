require "thor"

class PasuwaadoCLI < Thor
  desc 'Get password for site', ''
  def pass(url)
    puts "dunya386925#{url.match(/\/\/w{3}?\.?(.+)\./).captures.first.upcase}"
  end
end

PasuwaadoCLI.start(ARGV)