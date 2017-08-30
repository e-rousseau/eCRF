class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :form_code
      t.text :form_name
      t.references :study, foreign_key: true

      t.timestamps
    end
  end
end
