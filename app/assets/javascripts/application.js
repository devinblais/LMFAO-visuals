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

var Q = [];


//Each page needs to define:
// songType (media || lmfa_media)
// playSong which changes the src of the video and any other things

function nextSong() {
  //Check if Q is empty
  if(!Q.length) {
    loadSongs()
    return;
  }
  var song = Q.pop();
  playSong(song);

}
function loadSongs(){
  $.ajax({
    url: "/"+songType+".json",
    success: function(d) {
      Q = d; 
      nextSong();
    }
  })

}

$(function() {
  $("video").bind("ended", nextSong)
  loadSongs()
})
