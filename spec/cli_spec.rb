require 'spec_helper'
require 'pasuwaado/cli'

describe 'CLI' do
  describe 'lg heroku' do
    it 'should return heroku pass' do
      expect { Pasuwaado::CLI.start %w{ heroku } }.to output("dunya386925Heroku").to_stdout
    end
  end
end