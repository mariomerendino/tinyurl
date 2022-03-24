class UrlsController < ApplicationController
  def index
    render 'index'
  end

  def create
    url = Url.create!(
      key: params[:requested_path],
      real_link: params[:real_link],
      num_hits: 0,
    )

    @flash = {}
    @flash[:message] = "Your shortended URL is #{request.base_url}/url/#{url.key}"

    render 'index'
  end

  def show
    url = Url.find_by(key: params[:key])
    
    if url
      url.update(num_hits: url.num_hits + 1)
      redirect_to url.real_link
    else
    end
  end
end