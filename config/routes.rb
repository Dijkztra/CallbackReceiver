Rails.application.routes.draw do
  match(":url" => "application#consume", constraints: { url: /.*/ }, via: ActionDispatch::Request::HTTP_METHODS)
end
