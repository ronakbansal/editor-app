require 'ideone'
class HomeController < ApplicationController
  def index
    
  end
  def ide_one
    i = Ideone.new('ronakbansal','rksareen')
    # Create submission
    source_code = params[:text]
    token = i.create_submission(source_code, 17) # Ruby
    # Get submission status
    status = i.submission_status(token)
    if status[:result] == 15
     @output_detail = i.submission_details(token)
    end
  end
end
