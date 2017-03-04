module Features
  def sign_in
    sign_in_as("yatindra@yopmail.com")
  end

  def sign_in_as(email)
    visit root_path
    fill_in "session[email]", with: email
    click_on "Sign in"
  end
end
