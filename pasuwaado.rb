require "thor"

class PasuwaadoCLI < Thor
  desc 'Get password for site', ''
  def pass(url)
    puts "#{url}"
  end
end

PasuwaadoCLI.start(ARGV)