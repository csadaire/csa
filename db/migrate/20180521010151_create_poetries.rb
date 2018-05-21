class CreatePoetries < ActiveRecord::Migration[5.1]
  def change
    create_table :poetries do |t|
      t.string :title
      t.text :body
      t.integer :views

      t.timestamps
    end
  end
end
