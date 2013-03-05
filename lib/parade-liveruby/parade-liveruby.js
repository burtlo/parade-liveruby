$(document).ready(function() {

  var rubyInvocation = function(code) {
    $.get('/eval_ruby', { code: code }, function(result) {
      if (result != null) { $.publish('code:execution:results',result); }
      $.publish('code:execution:finished');
    });
  };

  // Register ruby with the code executor
  codeExecutor.registerVisibleCodeBlock('ruby',$('.execute .ruby pre:visible'),rubyInvocation);

  $('.execute pre.ruby').live("click", function() {
    var code = $(this).text();
    $.publish('code:execute',{ lang: 'ruby', code: code, elem: $(this) });
  });


});