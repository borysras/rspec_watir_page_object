class HomePage
  include PageObject

  page_url 'http://juke.com/'

  def accept_cookies
    send_keys :enter
  end

  def click_reg_button
    a(:xpath, "//a[contains(text(),'Registrieren')]").click
  end

  def close_popup_windows
    a(:xpath, "//a[@class = 'icon-holder trial-popup__close']").click
  end

  def start_playback
    div(:xpath,
        "//div[@class='icon-holder js-player-play icon-holder-play']").click
  end

  def pause_playback
    div(:xpath, "//div[@class='icon-holder js-player-play icon-holder-pause']")
  end

  def music_exists?
    pause_playback.exists?
  end

  def close_popup
    button(:xpath,
           "//button[@class = 'btn btn-primary btn-yes ng-scope']").click
  end
end
