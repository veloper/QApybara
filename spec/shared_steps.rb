shared_steps 'login' do |email, password, options|

  Given "I'm on the login page" do
    $env_config.subdomain = optoins.fetch(:subdomain, nil)
    visit '/login'
  end

  When "I enter my email address and password" do
    fill_in 'Email Address', with: email
    fill_in 'Password', with: password
  end

  And "I click the login button" do
    click_button "Login"
  end

end
