class CreateUlinks < ActiveRecord::Migration[5.1]
  def change
    create_table :ulinks do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
