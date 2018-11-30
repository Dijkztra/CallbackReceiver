Rails.application.routes.draw do
  # All API call is redirected into application controller
  match(":url" => "application#get",    constraints: { url: /.*/ }, via: :get)
  match(":url" => "application#post",   constraints: { url: /.*/ }, via: :post)
  match(":url" => "application#patch",  constraints: { url: /.*/ }, via: :patch)
  match(":url" => "application#put",    constraints: { url: /.*/ }, via: :put)
  match(":url" => "application#delete", constraints: { url: /.*/ }, via: :delete)
end
