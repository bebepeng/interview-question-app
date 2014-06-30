window.QuestionGenerator = {
  initialize: function (questions) {
    this.questions = questions;

    this.printQuestion();

    $(document).on('click', "[data-behavior=get]", this.replaceQuestion.bind(this));
  },

  count: 0,

  printQuestion: function () {
    var $questionDiv = $("<div class='question' data-content='question'>");
    var $html = $("<h1>" + this.questions[this.count].content + "</h1>");
    $questionDiv.append($html);

    $("[data-container=question]").append($questionDiv);
  },


  replaceQuestion: function (event) {
    event.preventDefault();
    if (this.count < (this.questions.length - 1)) {
      this.count++;
    } else {
      this.count = 0;
    }

    var $html = $("<h1>" + this.questions[this.count].content + "</h1>");
    $(document).find("[data-content=question]").html($html);
  },
};