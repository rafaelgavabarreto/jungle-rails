class UserMailer < ApplicationMailer
  default from: 'admin@jungle.ca'

  def orderconf_email(user)
    # @order = order
    # @user = @order.user
    # @url = 'http://0.0.0.0:3000/order/#{order.id}'
    mail(to: @user.email, subject: 'Jungle Store! Your order has confirmed')
  end
end