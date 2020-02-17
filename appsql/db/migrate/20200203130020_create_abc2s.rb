class CreateAbc2s < ActiveRecord::Migration[6.0]
  def change
    create_table :abc2s do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
