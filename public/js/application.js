$(document).ready(function() {
  var question_counter = 0;
  var option_counter = 0;
  $('#addquestion').on('click', function(event) {
    event.preventDefault(); 

    var question = "<div class='choices'><input type='text' name='question_" + question_counter + "'><input type='button' class='add_choice' value='Add a choice'></div><br >";
    $('.questions').append("<hr>"+question);
    question_counter++;

    $(this).next().children().last().prev().find('input[type=button]').click(function(event) {
      var option = "<input type='text' name='option_"+option_counter+"'><br >";
      $(this).parent().append(option)
      option_counter++;
    })
  });
});
