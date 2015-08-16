class RssController < ApplicationController

  def index

    @keywords = Keyword.order("created_at DESC").limit(10000)

    respond_to do |format|
       format.atom { render :layout => false }
    end

  end

end
