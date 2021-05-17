class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.references :user, null: false, foreign_key: true
      t.string :available
      t.string :employer
      t.string :location
      t.text :summary
      t.string :started
      t.string :finished

      t.timestamps
    end
  end
end
