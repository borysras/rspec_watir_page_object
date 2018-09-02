class SuccessfulRegistrationPage
  include PageObject

  def registration_email_element(email)
    span(:xpath, "//span[@class='ng-binding'][contains(text(),'#{email}')]")
  end

  def email_exists?(email)
    registration_email_element(email).exists?
  end
end
