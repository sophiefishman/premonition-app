class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :tmdb_api_id
      t.integer :user_id
      t.text :review

      t.timestamps
    end
  end
end
