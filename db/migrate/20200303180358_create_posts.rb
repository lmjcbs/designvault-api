class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :content, null: false, default: ""

      t.references :user, type: :uuid, foreign_key: true
      
      t.timestamps
    end
  end
end
