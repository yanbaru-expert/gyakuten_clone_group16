class AwsText < ApplicationRecord

  def self.import(path:)
    list = []
    CSV.foreach(pash, headers: true) do |row|
      list << {
        title: row["title"],
        content: row["content"]
      }
    end
    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
