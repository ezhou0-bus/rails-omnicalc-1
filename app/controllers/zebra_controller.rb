class ZebraController < ApplicationController
  def hello
    render template: "hello"
  end

  def goodbye
    render template: "goodbye"
  end

  def squareone
    render template: "new_square_calc"
  end
  
  def squaretwo
    render template: "square_results"
  end

  def squarerootone
    render template: "square_root_new"
  end

  def squareroottwo
    @number = params[:users_number].to_f
    @result = Math.sqrt(@number).round(3).to_f
    render template: "square_root_result"
  end

  def paymentone
    render template: "payment_new"
  end

  def paymenttwo
    apr = params[:apr].to_f / 100 / 12
  years = params[:years].to_i
  principal = params[:principal].to_f
  months = years * 12

  @monthly_payment = (principal * apr) / (1 - (1 + apr)**-months)
  @formatted_payment = sprintf('%.2f', @monthly_payment)
  @formatted_apr = (params[:apr].to_f).round(4).to_s + '%' # Format APR as percentage

    render template: "payment_result"
  end

  def randomone
    render template: "random_new"
  end

  def randomtwo
    min = params[:minimum].to_f
  max = params[:maximum].to_f
  random_number = rand(min..max)
    render template: "random_result"
  end

end
