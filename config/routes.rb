Rails.application.routes.draw do
    # resources :subscribes, only: [:index]
    # resources :prefectures, only: [:index, :show]
    # resources :genres, only: [:index, :show]

  devise_for :bands, controllers: {
  sessions:      'bands/sessions',
  passwords:     'bands/passwords',
  registrations: 'bands/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

    resources :bands, only: [:index, :show, :edit, :new, :update] do
      resources :comments, only: [:create, :destroy]
      resources :subscribes, only: [:create, :destroy]
      resources :yells, only: [:create, :destroy]
      resources :audios, only: [:create, :destroy]
      resources :posts, only: [:show, :create, :destroy]
    end
    resources :users, only: [:show, :edit, :index, :update]

    root :to => "homes#top"
    get 'homes/about' => 'homes#about', as: 'about'

#                    Prefix Verb   URI Pattern                               Controller#Action
#          new_band_session GET    /bands/sign_in(.:format)                  bands/sessions#new
#              band_session POST   /bands/sign_in(.:format)                  bands/sessions#create
#      destroy_band_session DELETE /bands/sign_out(.:format)                 bands/sessions#destroy
#         new_band_password GET    /bands/password/new(.:format)             bands/passwords#new
#        edit_band_password GET    /bands/password/edit(.:format)            bands/passwords#edit
#             band_password PATCH  /bands/password(.:format)                 bands/passwords#update
#                           PUT    /bands/password(.:format)                 bands/passwords#update
#                           POST   /bands/password(.:format)                 bands/passwords#create
#  cancel_band_registration GET    /bands/cancel(.:format)                   bands/registrations#cancel
#     new_band_registration GET    /bands/sign_up(.:format)                  bands/registrations#new
#    edit_band_registration GET    /bands/edit(.:format)                     bands/registrations#edit
#         band_registration PATCH  /bands(.:format)                          bands/registrations#update
#                           PUT    /bands(.:format)                          bands/registrations#update
#                           DELETE /bands(.:format)                          bands/registrations#destroy
#                           POST   /bands(.:format)                          bands/registrations#create
#          new_user_session GET    /users/sign_in(.:format)                  users/sessions#new
#              user_session POST   /users/sign_in(.:format)                  users/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                 users/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)             users/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)            users/passwords#edit
#             user_password PATCH  /users/password(.:format)                 users/passwords#update
#                           PUT    /users/password(.:format)                 users/passwords#update
#                           POST   /users/password(.:format)                 users/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                   users/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                  users/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                     users/registrations#edit
#         user_registration PATCH  /users(.:format)                          users/registrations#update
#                           PUT    /users(.:format)                          users/registrations#update
#                           DELETE /users(.:format)                          users/registrations#destroy
#                           POST   /users(.:format)                          users/registrations#create
#             band_comments POST   /bands/:band_id/comments(.:format)        comments#create
#              band_comment DELETE /bands/:band_id/comments/:id(.:format)    comments#destroy
#           band_subscribes POST   /bands/:band_id/subscribes(.:format)      subscribes#create
#            band_subscribe DELETE /bands/:band_id/subscribes/:id(.:format)  subscribes#destroy
#                band_yells POST   /bands/:band_id/yells(.:format)           yells#create
#                 band_yell DELETE /bands/:band_id/yells/:id(.:format)       yells#destroy
#               band_audios POST   /bands/:band_id/audios(.:format)          audios#create
#                band_audio DELETE /bands/:band_id/audios/:id(.:format)      audios#destroy
#                band_posts POST   /bands/:band_id/posts(.:format)           posts#create
#                 band_post GET    /bands/:band_id/posts/:id(.:format)       posts#show
#                           DELETE /bands/:band_id/posts/:id(.:format)       posts#destroy
#                     bands GET    /bands(.:format)                          bands#index
#                  new_band GET    /bands/new(.:format)                      bands#new
#                 edit_band GET    /bands/:id/edit(.:format)                 bands#edit
#                      band GET    /bands/:id(.:format)                      bands#show
#                           PATCH  /bands/:id(.:format)                      bands#update
#                           PUT    /bands/:id(.:format)                      bands#update
#                     users GET    /users(.:format)                          users#index
#                 edit_user GET    /users/:id/edit(.:format)                 users#edit
#                      user GET    /users/:id(.:format)                      users#show
#                           PATCH  /users/:id(.:format)                      users#update
#                           PUT    /users/:id(.:format)                      users#update
#                      root GET    /                                         homes#top
#                     about GET    /homes/about(.:format)                    homes#about
#                refile_app        /attachments                              #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.7/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
end
