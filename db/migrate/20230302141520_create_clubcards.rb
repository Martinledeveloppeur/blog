class CreateClubcards < ActiveRecord::Migration[7.0]
  def change
    create_table :clubcards do |t|
      t.text :title
      t.string :name
      t.float :age
      t.text :position
      t.text :image

      t.timestamps
    end
  end
end
