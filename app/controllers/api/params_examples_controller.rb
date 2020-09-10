class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    @my_message = params["fruit"]
    @other_message = params[:number]
    render "query_params.json.jb"
  end

end
