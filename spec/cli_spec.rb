require 'spec_helper'
require 'pasuwaado/cli'

describe 'CLI' do

  [
    ['http://www.heroku.com',       'dunya35Heroku'],
    ['http://www.godaddy.com',      'dunya35GoDaddy'],
    ['http://www.gmail.com',        'dunya35Gmail'],
    ['http://www.steampowered.com', 'dunya35Steam'],
    ['http://www.paypal.com',       'dunya35Paypal'],
    ['http://www.github.com',       'dunya35Github']
  ].each do |uri, expected|
    describe 'pass ' do
      it 'should return heroku pass' do
        expect { Pasuwaado::CLI.start %W{ pass #{uri} } }.to output("looking up pass for #{uri}\n\n#{expected}\n").to_stdout
      end
    end
  end
end