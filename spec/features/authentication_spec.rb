require_relative '../spec_helper'

context 'Authenticating' do

  Steps 'Using correct credentials' do
    include_steps 'login', 'ddoezema@example.com', 'password', :subdomain => "veloper"

    Then "I should be logged in" do
      expect(page).to have_content("Welcome, Daniel Doezema")
    end
  end

end
