class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :name
      t.text :desc
      t.string :picture

      t.timestamps null: false
    end
  end
end
