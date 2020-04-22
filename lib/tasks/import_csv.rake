require 'csv'

namespace :import_csv do
  #rake import_csv:aws_texts
  desc "aws_text_data.csvをaws_textsにインポートするタスク"

  task aws_texts: :environment do
    aws_text.import(path: 'db/csv_data/aws_text_data.csv')
  end
end
