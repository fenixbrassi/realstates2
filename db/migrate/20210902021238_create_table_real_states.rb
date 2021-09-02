class CreateTableRealStates < ActiveRecord::Migration[6.0]
  def change
    create_table :real_states do |t|
      t.string :name
      t.string :type_col
      t.string :city
      t.string :country
    end
  end
end
