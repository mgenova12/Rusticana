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
        console.log(this.specials)
      
        for(i=0; i<this.specials.length; i++){
          if(this.specials[i].selected === true){
            this.selectedSpecials.push(this.specials[i]);
          }
        }

        console.log(this.selectedSpecials)
      }.bind(this));

    },
    methods: {
      selectSpecial: function(special) {
        special.selected = !special.selected;
        document.getElementById("chooseTwo").innerHTML = ''
        console.log(this.selectedSpecials)

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
        console.log(this.selectedSpecials[0].selected)
        if (this.selectedSpecials.length === 2){
          document.getElementById("chooseTwo").innerHTML = 'SAVED!';
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
          document.getElementById("chooseTwo").innerHTML = 'You must choose two specials!';
        }

      }


    }

  });
});