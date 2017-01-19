get '/' do
  erb :index
end

post '/trails' do
city = params[:city]
state = params[:state]
range = params[:range]

response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?limit=25&q[activities_activity_type_name_eq]=hiking&q[city_cont]=#{city}&q[state_cont]=#{state}&radius=#{range}",
  headers:{
    "X-Mashape-Key" => "4tFlQK2KIqmshad9PXtWxI8VxOqip1IlwvsjsnwzU9iekL9Qf3",
    "Accept" => "text/plain"
  }

  redirect "/trails?city=#{city}&state=#{state}&range=#{range}"
end

get '/trails?city=:city&state=:state&range=:range' do

end
