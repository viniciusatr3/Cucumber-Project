class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string :name
      t.text :necessary_stuff
      t.text :how_to_make

      t.timestamps
    end
  end
end
