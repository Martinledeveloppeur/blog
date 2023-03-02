class CreateFootcards < ActiveRecord::Migration[7.0]
  def change
    create_table :footcards do |t|
      t.string :title

      t.timestamps
    end
  end
end
