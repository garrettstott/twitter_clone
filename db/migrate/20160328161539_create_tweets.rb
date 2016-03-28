class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body, null: false
      t.boolean :public, default: true
      t.attachment :picture
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
