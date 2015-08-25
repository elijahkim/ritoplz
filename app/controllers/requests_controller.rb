class RequestsController < ApplicationController
  def index
    @request = Request.new
    @requests = Request.all
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def request_params
    params.require(:request).permit(:content)
  end
end
