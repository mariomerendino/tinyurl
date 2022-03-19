class UrlsController < ApplicationController
  def index
  end

  def create
    Url.create!(
      key: SecureRandom.hex(10),
      real_link: params[:real_link],
      num_hits: 0,
    )
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