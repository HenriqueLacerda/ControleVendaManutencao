class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nome
      t.string :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
