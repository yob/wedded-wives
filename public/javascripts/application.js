var Wedded = {
  init_facebox_links: function() {
    $('a.facebox').facebox();
  },

  // Atomatically make all forms in lightboxes submit via AJAX. The
  // return value will be a string to replace the lightbox content with.
  //
  ajaxify_form: function() {
    $("#facebox form").submit(function(f) {
      var form = this;
      var form_data = $(form).serialize();

      jQuery.ajax({
        data: form_data,
        url: this.action,
        type: this.method,
        timeout: 10000,
        error: function(xhr, status, err) {
          if (xhr.status != 0)
            alert("An error occured, call James!");
        },
        success: function(data, status, xhr) {
          $.facebox(data);
        }
      });
      return false;
    });
  },

  onExit: function() {
    window.location.reload();
  },
}

$(Wedded.init_facebox_links);
$(document).bind('reveal.facebox', Wedded.ajaxify_form);
$(document).bind('afterClose.facebox', Wedded.onExit);
