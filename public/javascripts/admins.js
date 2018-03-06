document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      specials: [],
      selectedSpecials: []

    },
    mounted: function() {
    $.get('/api/v1/specials', function(response) {
        this.specials = response;
      
        for(i=0; i<this.specials.length; i++){
          if(this.specials[i].selected === true){
            this.selectedSpecials.push(this.specials[i]);
          }
        }

      }.bind(this));

    },
    methods: {
      selectSpecial: function(special) {
        special.selected = !special.selected;
        document.getElementById("saveMessage").innerHTML = ''

        this.selectedSpecials.push(special);

          for (var i=0; i < this.selectedSpecials.length; i++) {
            if (!this.selectedSpecials[i].selected) {
              this.selectedSpecials.splice(i, 1);
              i--;
            } else if(this.selectedSpecials.length > 2) {
              this.selectedSpecials[this.selectedSpecials.length -1].selected = false;
            }

          } 

      },

      saveSpecials: function() {
        if (this.selectedSpecials.length === 2){
          document.getElementById("saveMessage").innerHTML = 'SAVED!';
          for(var i=0; i<this.selectedSpecials.length; i++){
            if(this.selectedSpecials[i].selected === true ){
              $.ajax({
                 url: 'api/v1/specials/' + this.selectedSpecials[i].id,
                 type: 'PUT',
                 success: function(response) {
                   //...
                 }
              });
            }
          }
        } else {
          document.getElementById("saveMessage").innerHTML = 'You must choose two specials!';
        }

      }


    }

  });
});