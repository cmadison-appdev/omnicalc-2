class ApplicationController < ActionController::Base

  def add_new
    render({:template => "calc_templates/add.html.erb"})
  end

  def addition
  #  Parameters: {"first_num"=>"3", "second_num"=>"4"}
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first + @second
    render({:template => "calc_templates/add_results.html.erb"})
  end

  def subtract_new
    render({:template => "calc_templates/subtract.html.erb"})
  end

  def subtraction
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second - @first
    render({:template => "calc_templates/subtract_results.html.erb"})
  end

  def multiply_new
    render({:template => "calc_templates/multiply.html.erb"})
  end

  def multiplication
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second * @first
    render({:template => "calc_templates/multiply_results.html.erb"})
  end

  def division
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first/@second
    render({:template => "calc_templates/divide_results.html.erb"})
  end

  def divide_new
    render({:template => "calc_templates/divide.html.erb"})
  end
  def stc_new
    render({:template => "street_to_coords/new.html.erb"})
  end
  def stc_results
    @address = params.fetch("user_street_address").capitalize
    add_string = @address.gsub(/[^a-z0-9\s]/i, "")
    add_string = add_string.gsub(" ", "+")
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + add_string + "&key=" + ENV.fetch("GMAPS_KEY")
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    results_array = parsed_data.fetch("results")
    first_result = results_array.at(0)
    geometry_hash = first_result.fetch("geometry")
    location_hash = geometry_hash.fetch("location")
    @lat = location_hash.fetch("lat")
    @long = location_hash.fetch("lng")
    render({:template => "street_to_coords/results.html.erb"})
  end


end
