class TestMailer < ApplicationMailer
  include MailerFragmentCaching

  def test_email
    mail(to: 'test@email.com', subject: 'Test Email')
  end

end
