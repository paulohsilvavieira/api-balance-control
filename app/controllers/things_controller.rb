class ThingsController < ApplicationController
  def index
    now = Time.zone.now
    render json: { now => :now }
  end
end
