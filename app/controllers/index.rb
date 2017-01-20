get '/' do
  erb :index
end

post '/trails' do
@city = params[:city]
@state = params[:state]
@activity = params[:activity]
@range = params[:range]
@lat = params[:lat]
@lon = params[:lon]

@places = Unirest.get("https://trailapi-trailapi.p.mashape.com/?limit=25&q[activities_activity_type_name_eq]=hiking&q[city_cont]=#{@city}&q[state_cont]=#{@state}&radius=#{@range}",

  headers:{
    "X-Mashape-Key" => "4tFlQK2KIqmshad9PXtWxI8VxOqip1IlwvsjsnwzU9iekL9Qf3",
    "Accept" => "text/plain"
  })
  erb :'show'
end

# AIzaSyCmzTa8PqnY7cQaCrHyK6E78gOS-dUD8UM
