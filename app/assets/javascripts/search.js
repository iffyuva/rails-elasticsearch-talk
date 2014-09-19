$('document').on('keydown', '#search-box', function (e) {
  if (e.which === 13) {
    $('#search-box').submit();
  }
});
