class RegistrationPage
  include PageObject

  def fill_email_field(email)
    input(id: 'registration-email').send_keys email
  end

  def fill_password_field
    input(id: 'registration-password').send_keys 'Qwerty12345'
  end

  def terms_checkbox
    input(id: 'registration-terms').click
  end

  def newsletter_checkbox
    input(id: 'registration-newsletter').click
  end

  def registrieren_button
    send_keys :enter
  end

  def waiter
    h1(:xpath, "//h1[@class='page-title ng-scope']")
  end
end
