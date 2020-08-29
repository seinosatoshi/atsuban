class CommentsController < ApplicationController
	def create
	  @comment = Comment.new(comment_params)
	  @comment.receiver_id = params[:band_id]
	  if current_band
	  	@comment.band_id = current_band.id
	  elsif current_user
	  	@comment.user_id = current_user.id
	  end
	  @comment.save
	  redirect_to band_path(params[:band_id])
	end

	def destroy
	  @comment = Comment.find(params[:id])
	  if (current_user && @comment.user_id == current_user.id) || (current_band && @comment.receiver_id == current_band.id)
	  	@comment.destroy
	  end
	  redirect_to band_path(params[:band_id])
	end

  private
    def comment_params
	  params.require(:comment).permit(:body)
	end

end
