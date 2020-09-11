class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    @my_message = params["fruit"]
    @other_message = params[:number]
    render "query_params.json.jb"
  end

  def name_action
    my_name = params[:name].upcase
    @message = my_name
    if my_name.starts_with?("A")
      @message = "Hey your name starts with A!"
    end
    render "name.json.jb"
  end

  def guess_query_action
    @user_guess = params[:guess].to_i
    winning_number = 42
    if @user_guess > winning_number
      @message = "guess lower!"
    elsif @user_guess < winning_number
      @message = "guess higher!"
    else
      @message = "you win!"
    end
    render "guess_query.json.jb"
  end
  
  def url_segment_action
    @message = "This url segment value is #{params[:wildcard]}"
    render "url_segment.json.jb"
  end

  def body_params_action
    @message = "The secret info is #{params[:secret_info]}"
    render "body_params.json.jb"
  end

  def credentials_body_action
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "Valid credentials"
    else
      @message = "Invalid credentials"
    end
    render "credentials_body.json.jb"
  end

end
