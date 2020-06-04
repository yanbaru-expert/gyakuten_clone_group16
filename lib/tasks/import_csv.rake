require 'csv'

namespace :import_csv do

  desc "aws_text_data.csvをaws_textsにインポートするタスク"

  #rake import_csv:aws_texts
  task aws_texts: :environment do

    list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')

    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end


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


  desc "question_data.csvをquestionにインポートするタスク"

  task questions: :environment do

    list = Import.csv_data(path: 'db/csv_data/question_data.csv')

   puts "インポート処理を開始"
   begin
     Question.create!(list)
     puts "インポート完了!!"
   rescue ActiveModel::UnknownAttributeError => invalid
     puts "インポートに失敗：UnknownAttributeError"
   end
  end

  desc "live_coding_data.csvをlive_codingにインポートするタスク"

  task live_codings: :environment do

    list = Import.csv_data(path: 'db/csv_data/live_coding_data.csv')

   puts "インポート処理を開始"
   begin
    LiveCoding.create!(list)
     puts "インポート完了!!"
   rescue ActiveModel::UnknownAttributeError => invalid
     puts "インポートに失敗：UnknownAttributeError"
   end
  end
  
  desc "php_lecture.csvをphp_lectureにインポートするタスク"

  task php_lectures: :environment do

    list = Import.csv_data(path: 'db/csv_data/php_lecture_data.csv')

   puts "インポート処理を開始"
   begin
    PhpLecture.create!(list)
     puts "インポート完了!!"
   rescue ActiveModel::UnknownAttributeError => invalid
     puts "インポートに失敗：UnknownAttributeError"
   end
  end

  desc "talking_video.csvをtaling_videoにインポートするタスク"

  task talking_videos: :environment do

    list = Import.csv_data(path: 'db/csv_data/talking_video_data.csv')

   puts "インポート処理を開始"
   begin
    TalkingVideo.create!(list)
     puts "インポート完了!!"
   rescue ActiveModel::UnknownAttributeError => invalid
     puts "インポートに失敗：UnknownAttributeError"
   end
  end

end





