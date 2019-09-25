require_relative 'config/environment'

class App < Sinatra::Base
  
  get  '/reversename/:name' do 
    
  end
  
  get '/square/:number' do 
  end 
  
  get '/say/:number/:phrase' do 
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation] 
    @number1 = params[:number1] 
    @number2 = params[:number2] 
    
    case @operation 
      when "add" 
        @result = @number1.to_i + @number2.to_i
      when "subtract"
        @result = @number1.to_i - @number2.to_i
      when "multiply"
        @result = @number1.to_i * @number2.to_i
      when "divide"
        @result = @number1.to_i / @number2.to_i
    end
  
  end

end