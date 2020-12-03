require_relative 'config/environment'

class App < Sinatra::Base
 get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "subtract"
      (@num1 - @num2).to_s
    when "add"
      (@num1 + @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    when "multiply"
      (@num1 * @num2).to_s
    end 
