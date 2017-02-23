// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {

    $('#updates').on('click', function(){
      var projectId = $('.container').attr('data-project-id')
      // console.log(projectId)
      $.ajax({
        url: '/projects/' + projectId + '/updates',
        method: GET,
        data: $(this).serialize(),
        dataType: 'json'
      });
    });
  });

// - look at URL, parse :project_id out with reg exp
// - window.location
