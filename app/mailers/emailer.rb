class Emailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email( user: user, order: order)
    @user = user
    @order = order
    if @user
      mail(to: user.email , subject: "Order \# #{@order.id} has been received")
    end
  end
end
