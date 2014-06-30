window.QuestionGenerator = {
  initialize: function (questions) {
    this.questions = questions;

    this.printQuestion();
  },

  count: 0,

  printQuestion: function () {
    var $questionDiv = $("<div class='question' data-content='question'>");
    var $html = $("<h1>"+ this.questions[this.count].content+ "</h1>");
    $questionDiv.append($html);

    $("[data-container=question]").append($questionDiv);
  },
};