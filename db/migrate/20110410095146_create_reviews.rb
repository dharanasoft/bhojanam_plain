class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.references :restaurant
      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
