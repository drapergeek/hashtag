// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//

$(document).ready(function() {

  function jquery_search(search_term){
    $.get("/"+search_term + ".json", function(data) {
      var tweets = [];
      $.each(data, function(key, val) {
        tweets.push('<li class="tweet">' + val.text + '</li>');
      });
      $('<ul/>', {
        'class': 'my-new-list',
        html: tweets.join('')
      }).appendTo('body');

    });

  };

  $("form.twitter_search").submit(function(){
    var search_term = $("#search_search").val();
    jquery_search(search_term);
    return false;
  });

  $("#search_search").keypress(function(){
    if ($(this).val().length > 3) {
    var search_term = $(this).val();
      jquery_search(search_term);
    };
  });
});
