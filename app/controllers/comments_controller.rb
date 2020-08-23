class CommentsController < ApplicationController
	def create
	  @comment = Band.find(params[:band_id])
	  @band_comment = current_band.user_comments.new(band_comment_params)
	  @band_comment.band_id = @comment.id
	  @band_comment.save
	end

	def destroy
	  @comment = Band.find(params[:band_id])
	  @user_comment = UserComment.find(params[:id])
	  @user_comment.destroy
	end

  private
    def user_comment_params
	  params.require(:user_comment).permit(:comment)
	end

end
