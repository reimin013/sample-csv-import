class Post < ApplicationRecord
  attachment :logo

  def self.import(file)
  	# CSVファイルから1行ずつ読み取りたい
  	CSV.foreach(file.path, headers: true) do |row|
  	  # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
  	  post = find_by(id: row["id"]) || new
  	  # CSVからデータを取得し、設定する
  	  post.attributes = row.to_hash.slice(*updatable_attributes)
  	  # 保存する
  	  post.save
  	end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
  	["id", "category_large", "category_small", "logo"]
  end
end
