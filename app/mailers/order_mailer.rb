class OrderMailer < ApplicationMailer
	 default from: 'sigmatconsultancy@gmail.com'

  def welcome_email
    @order = params[:order]
    mail(to: "manjusathyam842@gmail.com", subject: "Welcome to My Awesome Site")
  end
end




