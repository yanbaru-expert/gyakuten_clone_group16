require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require("@fortawesome/fontawesome-free")


$(function () {
  // テキストボックスでキーアップされた時に実行
  $('.search-text').keyup(function () {
    // テキストボックスの内容を取得し変数に入れる
    search_text = $(".search-text").val();
    // texts-content 内の h3をすべて取得する
    $('.texts-content h3').each(function () {
      // 大文字小文字を区別させず取得して変数に入れる
      val = $(this).text().toLowerCase();
      if (val.match(search_text)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});