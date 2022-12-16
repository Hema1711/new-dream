class OrderMailerPreview < ActionMailer::Preview

  def welcome_email
    OrderMailer.welcome_email(Order.new(total: '345453', email: 'sigmatconsultancy@gmail.com'))
  end

end