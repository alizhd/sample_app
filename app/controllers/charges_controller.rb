class ChargesController < ApplicationController

def new
end

def show
  
end

 def current_user=(user)
  end

def create
  # Amount in cents
  @amount = 500
  @user = User.find(params[:id])


  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => User.name,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end



end
