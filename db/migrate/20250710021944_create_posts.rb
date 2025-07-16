class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      # t.カラムの型 :カラム名
      # integer(数値), string(短文字列), text(長文字列), boolean(真偽), datetime(日付や時刻)
      t.text :content
      t.timestamps
    end
  end
end
