class ApplicationController < ActionController::Base
  def consume
    headers = request
      .headers
      .reject { |i| i.to_s.include?('.') }
      .map { |k, v| [k, v] }
      .to_h
    body = request.raw_post
    json = {
      url: params[:url],
      method: request.request_method,
      headers: headers,
      body: body,
      rails_params: params,
    }
    return render(json: json, status: :ok)
  end
end
