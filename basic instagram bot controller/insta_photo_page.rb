

class InstaPhotoPage < BasePage
  include PageObject
  include DataHelper

  span(:photo_like, :class => 'fr66n')

  def click_like
      self.photo_like_element.click
  end

end