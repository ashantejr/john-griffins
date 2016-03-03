require_relative 'config/environment'

class App < Sinatra::Base 

  get '/' do
  erb :dashboard
  end 

post '/' do
  @user = {
      name: "#{params["fname"]} #{params["lname"]}" 
     }
  
    erb :dashboard
  end

end