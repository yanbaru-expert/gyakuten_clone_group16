require 'csv'

namespace :import_csv do
  #rake import_csv:aws_texts
  desc "aws_text_data.csvをaws_textsにインポートするタスク"

  task aws_texts: :environment do
    path = Rails.root, 'db/csv_data/aws_text_data.csv'

    class Import
      def self.csv_data(path:)
        list = []
        CSV.foreach(path, headers: true) { |row| list << row.to_h }
        list
      end
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
