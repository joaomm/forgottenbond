class PageviewsController < ApplicationController

  def index
    @pageviews = Pageview.all.order(:created_at)
  end

end
