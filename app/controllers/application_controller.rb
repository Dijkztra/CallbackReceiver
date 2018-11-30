class ApplicationController < ActionController::Base
  def get
    return render(json: params, status: :ok)
  end

  def post
    return render(json: params, status: :created)
  end

  def put
    return render(json: params, status: :ok)
  end

  def patch
    return render(json: params, status: :ok)
  end

  def delete
    return render(json: params, status: :ok)
  end
end
