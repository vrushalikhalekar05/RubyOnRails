class CreatePpps < ActiveRecord::Migration[6.0]
  def change
    create_table :ppps do |t|
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
