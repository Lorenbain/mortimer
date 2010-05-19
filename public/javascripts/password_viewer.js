
var PasswordEntry = Class.create();
PasswordEntry.prototype = {
  initialize: function() {
    this.initClickToView();
    setTimeout(function() {
      this.selectPasswordText();
    }.bind(this), 500);
  },

  initClickToView: function() {
    Event.observe($("password_container"), "click", function(){
      $("password_container").innerHTML = $("hidden_password").value
    });
  },

  selectPasswordText: function() {
    var el = $('hidden_password');
    if(el) {
      if (el.createTextRange) {
        var oRange = el.createTextRange();
        oRange.moveStart("character", 0);
        oRange.moveEnd("character", el.value.length);
        oRange.select();
      }
      else if (el.setSelectionRange) {
        el.setSelectionRange(0, el.value.length);
      }

      el.focus();
    }
  }
};

function initPasswordEntry() {
  var passwordEntry = new PasswordEntry;
}

Event.observe(window, "load", function() {
  initPasswordEntry();
});
