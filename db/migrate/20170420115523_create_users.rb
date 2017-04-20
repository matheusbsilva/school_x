class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :cpf
      t.string :registry
      t.string :password
      t.string :auth_token
      t.string :type
      t.references :parent, index:true

      t.timestamps
    end
  end
end
