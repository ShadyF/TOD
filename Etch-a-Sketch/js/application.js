var grid = $(".grid");

$(document).ready(function() {
  var w = grid.width(); //get the width which is set at a percentage
  grid.width(Math.ceil(w)); //Make grid width equal to an int instead of float from the percentage

  $(".reset").on("click", reset);
  $(".newGrid").on("click", createGrid);

  grid.on("mouseenter", ".square", function () {
    $(this).addClass("black");
  });  
});

function reset() {
  grid.find(".black").removeClass("black");
}

function createGrid() {
  var n = prompt("Please enter size of the new grid");
  var wh = grid.width() / n;
  grid.find("div").remove();

  for(var i = 0; i < n*n; i++) {
    grid.append("<div class='square'></div>");
  }

  $(".square").width(wh).height(wh);  //adjusts width and height of the square
}
