require 'spec_helper'
require 'pasuwaado/cli'

describe 'CLI' do

  [
    ['http://www.heroku.com', 'dunya35Heroku'],
    ['http://www.godaddy.com', 'dunya35GoDad'],
    ['http://www.gmail.com', 'dunya35Kirkali'],
    ['http://www.steampowered.com', 'dunya35Steam'],
    ['http://www.paypal.com', 'dunya35Paypal']
  ].each do |uri, expected|
    describe 'pass ' do
      it 'should return heroku pass' do
        expect { Pasuwaado::CLI.start %W{ pass #{uri} } }.to output("looking up pass for #{uri}\n#{expected}\n").to_stdout
      end
    end
  end
end