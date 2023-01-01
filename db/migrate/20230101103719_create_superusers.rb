class CreateSuperusers < ActiveRecord::Migration[7.0]
  def change
    create_table :superusers do |t|
      t.string :email
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
