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
    render({:template => "street_to_coords/results.html.erb"})
  end


end
