require 'csv'

namespace :import_csv do
  desc "aws_text_data.csvをaws_textsにインポートするタスク"

  task users: environment do
    path = File.join Rails.root, "db/csv_data/aws_text_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        [{"title"=>"タイトル1", "content"=>"内容1"},
        {"title"=>"タイトル2", "content"=>"内容3"},
        {"title"=>"タイトル2", "content"=>"内容3"}]
      }
    end
    puts "インポート処理を開始"
    begin
      User.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
