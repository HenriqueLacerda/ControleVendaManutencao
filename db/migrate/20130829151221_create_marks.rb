class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :nome

      t.timestamps
    end
  end
end
