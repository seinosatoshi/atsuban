require 'rails_helper'

describe CommentsController do
     describe 'POST #create' do
        it "saves the new contact in the database" do
          expect{
            post :create, comment: {body: "text", band_id: 1, user_id: 1, receiver_id: 1}
          }.to change(Comment, :count).by(1)
        end
        it "redirects to articles#index" do
          post :create, comment: attributes_for(:comment)
          expect(response).to redirect_to band_comments_path
        end
     end
end


describe CommentsController do
      describe 'delete #destroy' do
        it "deletes the comment" do
          comment = create(:comment)
          expect{
            delete :destroy, id: comment
          }.to change(Comment,:count).by(-1)
        end
      end
end