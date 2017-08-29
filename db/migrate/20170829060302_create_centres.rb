class CreateCentres < ActiveRecord::Migration[5.0]
  def change
    create_table :centres do |t|
      t.string :centre_code
      t.text :centre_name
      t.references :study, foreign_key: true

      t.timestamps
    end
  end
end
