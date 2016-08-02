var SnmJS = SnmJS || {};
SnmJS = (function($, window, document, snm){
  snm.custom ={
    portfolioModalController: function(){
      $("#portfolioModal").on("show.bs.modal", function(e) {
        // var link = $(e.relatedTarget);
        $(this).find(".modal-content").load($(e.relatedTarget).attr("href"));
      });
    },
    questionEditorController: function(){
      $('#editor').summernote();
    },
    getEditorData: function(){
      data = $('#editor').summernote('code');
    },
    blogCommentController: function(){
      $(document).on("click", ".write-a-comment", function(event){
        $("#comment_nested").val($(this).attr("data-nested"));
        $("#comment_nested_id").val($(this).attr("data-nested-id"));
      });
    },

    signinModalController: function(){
      $("#signin-modal").on("show.bs.modal", function(e) {
        // var link = $(e.relatedTarget);
        $(this).find(".modal-content").load($(e.relatedTarget).attr("href"));
      });
    },

    BlogAdvanceSearchModalController: function(){
      $("#advance-search-modal").on("show.bs.modal", function(e) {
        // var link = $(e.relatedTarget);
        $(this).find(".modal-content").load($(e.relatedTarget).attr("href"));
      });
    },

    CommonMethodController: function(){
      $(".flash_message").delay(3000).hide(3000);
    }
  };
  return snm;
})(jQuery, this, this.document, SnmJS);
$(document).ready(function(){
  SnmJS.custom.portfolioModalController();
  SnmJS.custom.questionEditorController();
  SnmJS.custom.blogCommentController();
  SnmJS.custom.signinModalController();
  SnmJS.custom.BlogAdvanceSearchModalController();
  SnmJS.custom.CommonMethodController();
})