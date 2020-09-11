# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_907_111_803) do
  create_table 'audios', force: :cascade do |t|
    t.string 'name'
    t.integer 'post_id'
    t.string 'file'
    t.integer 'band_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'bands', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'youtube_url'
    t.text 'tips'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'name', null: false
    t.string 'name_kana', null: false
    t.string 'rep_name', null: false
    t.string 'rep_name_kana', null: false
    t.string 'image_id'
    t.string 'link'
    t.string 'sns'
    t.string 'area'
    t.string 'genre'
    t.text 'introduction'
    t.boolean 'is_left', default: true, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['email'], name: 'index_bands_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_bands_on_reset_password_token', unique: true
  end

  create_table 'comments', force: :cascade do |t|
    t.text 'body'
    t.integer 'band_id'
    t.integer 'user_id'
    t.integer 'receiver_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.integer 'audio_id'
    t.integer 'band_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'subscribes', force: :cascade do |t|
    t.integer 'band_id'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'name'
    t.string 'name_kana'
    t.string 'image_id'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'yells', force: :cascade do |t|
    t.integer 'band_id'
    t.integer 'user_id'
    t.datetime 'yelled_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
