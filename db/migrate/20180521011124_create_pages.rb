class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :home
      t.string :about
      t.string :contact

      t.timestamps
    end
  end
end
