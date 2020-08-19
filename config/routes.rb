Rails.application.routes.draw do
  namespace :users do
    resources :yells, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :subscribes, only: [:index]
    resources :users, only: [:show, :edit, :index, :update]
  end

  namespace :bands do
    resources :posts, only: [:show, :create, :destroy]
    resources :videos, only: [:create, :destroy]
    resources :audios, only: [:create, :destroy]
    resources :cover_images, only: [:create, :destroy]
    resources :prefectures, only: [:index, :show]
    resources :genres, only: [:index, :show]
    resources :bands, only: [:index, :show, :edit, :new, :update]
  end
  root :to => "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'

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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#                      Prefix Verb   URI Pattern                                                                              Controller#Action
#               users_yells POST   /users/yells(.:format)                                                                   users/yells#create
#                users_yell DELETE /users/yells/:id(.:format)                                                               users/yells#destroy
#            users_comments POST   /users/comments(.:format)                                                                users/comments#create
#             users_comment DELETE /users/comments/:id(.:format)                                                            users/comments#destroy
#          users_subscribes GET    /users/subscribes(.:format)                                                              users/subscribes#index
#               users_users GET    /users/users(.:format)                                                                   users/users#index
#           edit_users_user GET    /users/users/:id/edit(.:format)                                                          users/users#edit
#                users_user GET    /users/users/:id(.:format)                                                               users/users#show
#                           PATCH  /users/users/:id(.:format)                                                               users/users#update
#                           PUT    /users/users/:id(.:format)                                                               users/users#update
#               bands_posts POST   /bands/posts(.:format)                                                                   bands/posts#create
#                bands_post GET    /bands/posts/:id(.:format)                                                               bands/posts#show
#                           DELETE /bands/posts/:id(.:format)                                                               bands/posts#destroy
#              bands_videos POST   /bands/videos(.:format)                                                                  bands/videos#create
#               bands_video DELETE /bands/videos/:id(.:format)                                                              bands/videos#destroy
#              bands_audios POST   /bands/audios(.:format)                                                                  bands/audios#create
#               bands_audio DELETE /bands/audios/:id(.:format)                                                              bands/audios#destroy
#        bands_cover_images POST   /bands/cover_images(.:format)                                                            bands/cover_images#create
#         bands_cover_image DELETE /bands/cover_images/:id(.:format)                                                        bands/cover_images#destroy
#         bands_prefectures GET    /bands/prefectures(.:format)                                                             bands/prefectures#index
#          bands_prefecture GET    /bands/prefectures/:id(.:format)                                                         bands/prefectures#show
#              bands_genres GET    /bands/genres(.:format)                                                                  bands/genres#index
#               bands_genre GET    /bands/genres/:id(.:format)                                                              bands/genres#show
#               bands_bands GET    /bands/bands(.:format)                                                                   bands/bands#index
#            new_bands_band GET    /bands/bands/new(.:format)                                                               bands/bands#new
#           edit_bands_band GET    /bands/bands/:id/edit(.:format)                                                          bands/bands#edit
#                bands_band GET    /bands/bands/:id(.:format)                                                               bands/bands#show
#                           PATCH  /bands/bands/:id(.:format)                                                               bands/bands#update
#                           PUT    /bands/bands/:id(.:format)                                                               bands/bands#update
#                      root GET    /                                                                                        homes#top
#                     about GET    /homes/about(.:format)                                                                   homes#about
#          new_band_session GET    /bands/sign_in(.:format)                                                                 bands/sessions#new
#              band_session POST   /bands/sign_in(.:format)                                                                 bands/sessions#create
#      destroy_band_session DELETE /bands/sign_out(.:format)                                                                bands/sessions#destroy
#         new_band_password GET    /bands/password/new(.:format)                                                            bands/passwords#new
#        edit_band_password GET    /bands/password/edit(.:format)                                                           bands/passwords#edit
#             band_password PATCH  /bands/password(.:format)                                                                bands/passwords#update
#                           PUT    /bands/password(.:format)                                                                bands/passwords#update
#                           POST   /bands/password(.:format)                                                                bands/passwords#create
#  cancel_band_registration GET    /bands/cancel(.:format)                                                                  bands/registrations#cancel
#     new_band_registration GET    /bands/sign_up(.:format)                                                                 bands/registrations#new
#    edit_band_registration GET    /bands/edit(.:format)                                                                    bands/registrations#edit
#         band_registration PATCH  /bands(.:format)                                                                         bands/registrations#update
#                           PUT    /bands(.:format)                                                                         bands/registrations#update
#                           DELETE /bands(.:format)                                                                         bands/registrations#destroy
#                           POST   /bands(.:format)                                                                         bands/registrations#create
#          new_user_session GET    /users/sign_in(.:format)                                                                 users/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 users/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            users/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           users/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                users/passwords#update
#                           PUT    /users/password(.:format)                                                                users/passwords#update
#                           POST   /users/password(.:format)                                                                users/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  users/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 users/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    users/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         users/registrations#update
#                           PUT    /users(.:format)                                                                         users/registrations#update
#                           DELETE /users(.:format)                                                                         users/registrations#destroy
#                           POST   /users(.:format)                                                                         users/registrations#create
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
end
