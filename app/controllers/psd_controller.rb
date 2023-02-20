class PsdController < ApplicationController
  include PsdHelper

  def index
    @keywords = read_keywords_from_psd if params[:display_keywords]  
  end
end
