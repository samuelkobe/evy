class ApplicationController < ActionController::Base
  before_filter :recent_work
  before_filter :featured_work
  
  def recent_work
    @recent_work = Refinery::Works::Work.order('position DESC').first(4)
  end
  
  def featured_work
    @featured_work = Refinery::Works::Work.order('position ASC').each
  end
  
  protect_from_forgery
end
