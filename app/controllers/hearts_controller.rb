class HeartsController < ApplicationController
  def create
    @heart = Heart.new(heart_params)

    respond_to do |format|
      if @heart.save
        format.html { redirect_to root_url, notice: 'Heart added to post!' }
        format.json { render :show, status: :created, location: @heart.post }
      else
        redirect_to root_url, notice: "Had an issue adding a heart...."
      end
    end
  end
  
  private
    def heart_params
      params.require(:heart).permit(:post_id)
    end
end