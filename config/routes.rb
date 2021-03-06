Rails.application.routes.draw do

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/add", { :controller =>  "application", :action =>  "add_new" })
  get("/addition", { :controller =>  "application", :action =>  "addition" })

  get("/subtract", { :controller =>  "application", :action =>  "subtract_new" })
  get("/subtraction", { :controller =>  "application", :action =>  "subtraction" })

  get("/multiply", { :controller => "application", :action => "multiply_new" })
  get("/multiplication", { :controller => "application", :action => "multiplication" })

  get("/divide", { :controller => "application", :action => "divide_new" })
  get("/division", { :controller => "application", :action => "division" })  

  # get("/muggle_translate", { :controller => "application", :action => "bull" })

  get("/street_to_coords/new", { :controller => "application", :action => "stc_new" })
  get("/street_to_coords/results", { :controller => "application", :action => "stc_results" })

  # get("/street_to_weather_new", { :controller => "application", :action => "goat" })
    
  # get("/coords_to_weather_new"", { :controller => "application", :action => "twins" })

end
url = "https://maps.googleapis.com/maps/api/geocode/json?address=5807+S+Woodlawn+Ave&key="
  + ENV.fetch("GMAPS_KEY")