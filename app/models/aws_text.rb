class AwsText < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        title: row["title"],
        content: row["content"]
      }
    end
    puts "インポート処理を開始"
    AwsText.create!(list)
    puts "インポート完了!!"
  rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗：UnknownAttributeError"
  end

end

