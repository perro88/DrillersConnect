class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :position
      t.string :place
      t.string :contract
      t.text :description

      t.timestamps
    end
  end
end
