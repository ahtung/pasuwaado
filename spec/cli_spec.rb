require 'spec_helper'
require 'pasuwaado/cli'

describe 'CLI' do
  describe 'pass http://www.heroku.com' do
    let(:url) { 'http://www.heroku.com' }
    let(:expected) { 'dunya35Heroku' }

    it 'should return heroku pass' do
      expect { Pasuwaado::CLI.start %W{ pass #{url} } }.to output("looking up pass for #{url}\n#{expected}\n").to_stdout
    end
  end
end