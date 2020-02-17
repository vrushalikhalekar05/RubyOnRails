class CreateAbcs < ActiveRecord::Migration[6.0]
  def change
    create_table :abcs do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
