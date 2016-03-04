# https://www.youtube.com/watch?v=AM-s7CmQ0io&feature=youtu.be
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

post '/' do
  @user = {
      name: "#{params[:fname]} #{params[:lname]}",
      profilepic: "#{params['propic']}",
      twitter: "#{params['twitter']}",
      facebook: "#{params['facebook']}",
      google: "#{params['google']}"
     }
    erb :dashboard
  end

end