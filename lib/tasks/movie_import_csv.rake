require 'csv'

namespace :import_csv do

  desc "movie_data.csvをmovieにインポートするタスク"

  #rake import_csv:movies
  task movies: :environment do

    list = Import.csv_data(path: 'db/csv_data/movie_data.csv')

    puts "インポート処理を開始"
    begin
      Movie.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
