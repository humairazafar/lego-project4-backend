class CreateNlegos < ActiveRecord::Migration[6.1]
  def change
    create_table :nlegos do |t|
      t.string :name
      t.string :details
      t.string :img_url

      t.timestamps
    end
  end
end
