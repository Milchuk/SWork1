class SWork1Migrations < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :email
      t.text :password
      t.date :registration_date
      t.string :role
      t.references :music_list
    end

    create_table :music_lists do |t|
      t.text :list_title
      t.integer :songs_num
      t.references :song
    end

    create_table :songs do |t|
      t.text :song_title
      t.time :song_duration
      t.text :lyrics
      t.references :album
    end

    create_table :album do |t|
      t.text :album_title
      t.date :album_year
      t.references :artist
    end

    create_table :artists do |t|
      t.text :artists_alias
      t.text :first_name
      t.text :last_name
      t.date :birthday
      t.string :sex
      t.text :artists_site_url
    end
  end
end
