class CreateCommentOnPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_on_posts do |t|
      t.belongs_to :post, foreign_key: true
      t.belongs_to :comment, foreign_key: true

      t.timestamps
    end
  end
end
