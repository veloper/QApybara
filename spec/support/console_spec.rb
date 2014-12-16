require_relative '../spec_helper'

context 'Capybara/Rspec' do
  Steps 'Console' do
    Given "I'm dropped into the middle of an example" do
    end

    When "calling binding.pry" do
      binding.pry
    end
  end
end
