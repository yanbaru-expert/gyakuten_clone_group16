class Text < ApplicationRecord
  # validates :genre, presence: true
  # validates :title, presence: true
  # validates :content, presence: true

  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        genre: row["genre"],
        title: row["title"],
        content: row["content"]
      }
    end
    puts "インポート処理を開始"
    Text.create!(list)
    puts "インポート完了!!"
  rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗：UnknownAttributeError"
  end
end
