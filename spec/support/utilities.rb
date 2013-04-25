
def full_title(page_title)
  base_title = "Contactim"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in  user
  visit new_user_session
  fill_in "Email", with: user.email
  fill_in "password", with: user.password
  click_button "Sign in"
end