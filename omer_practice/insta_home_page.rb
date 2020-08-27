

class InstaHomePage < BasePage
  include PageObject
  include DataHelper

  text_field(:user_email, :class => '_2hvTZ' ,:index =>0)
  text_field(:user_password, :class => '_2hvTZ' ,:index =>1)
  div(:app_store_icons, :class => 'APQi1')
  div(:submit, :class=> '_4EzTm')

  def loaded?
   self.app_store_icons_element.check_visible(20)
  end

  def log_in_as_random_user
    loaded?
    self.user_email_element.value ='random_'
    self.user_password_element.value ='123123'
    self.submit_element.click
  end

  def log_in_as_spesific_user(email,pass)
    loaded?
    self.user_email_element.value = email
    self.user_password_element.value = pass
    self.submit_element.click
  end

end
