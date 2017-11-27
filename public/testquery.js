(function(win, doc, $, undefined) {
    // 'use strict';
    
    // Don't run if jQuery isn't loaded
    if (typeof window.jQuery === 'undefined') {
      return;
    }

    var enabled = false;
    var form = this.$("form[action='/cart/add']");
    var variant_id = this.$('input[name^=id]:checked, select[name^=id], input[name^=id], hidden[name^=id]', form).val();
    if (typeof variant_id == 'undefined') {
        // They have customized the form.  We cannot support it.
        enabled = false;
    } else {
      enabled = true;
    }
    if (enabled) {
      alert("Theme supported.");
    } else {
      alert(document.location.host + " Theme not supported.");
      this.$('<form action="mailto:eg@showcrowd.co?subject=Help%20on%20theme%20support&body="'+'Domain:%20' + this.encodeURIComponent(document.location.host) +'method="post" enctype="text/plain">' + 'Domain:' + document.location.host + '</form>').append("<label>" + document.location.host + "</label>").appendTo('body').submit();
      var domain_name = this.encodeURIComponent(document.location.host); 
      var mail_string = "mailto:eg@showcrowd.co?subject=Help%20on%20theme%20suppport";
      this.$('<form>', {
          "id": "firstsales",
          "html": '<input type="text" id="domain" name="domain" value="' + domain_name + '" />',
          "action": mail_string,
          "method": "post"
      }).appendTo(document.body).submit();
    }

  }(window, window.document, window.jQuery));