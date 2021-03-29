class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.integer :gallery_id
      t.integer :votes

      t.timestamps
    end
  end
end
