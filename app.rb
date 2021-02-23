require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @number_one = params[:num1].to_i
    @number_two = params[:num2].to_i
    @product = @number_one * @number_two
    # @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

  # Code your final two routes here:

end