Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"
    get "/name_path" => "params_examples#name_action"
    get "/guess_query_path" => "params_examples#guess_query_action"
    get "/url_segment_path/:wildcard" => "params_examples#url_segment_action"
    get "/guess_segment_path/:guess" => "params_examples#guess_query_action"
  end
end
