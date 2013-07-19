$(document).ready(function () {
  $("#selectAll").click(function () {
    $("input").prop( 'checked', $("#selectAll").prop('checked') );
  });
});
