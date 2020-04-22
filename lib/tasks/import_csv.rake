require 'csv'

namespace :import_csv do

  desc "aws_text_data.csvをaws_textsにインポートするタスク"

  #rake import_csv:aws_texts
  task aws_texts: :environment do

    class Import
      def self.csv_data(path:)
        list = import.csv_data(path: 'db/csv_data/aws_text_data.csv')
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
