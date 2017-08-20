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
        console.log(response)
      }.bind(this));


    },
    methods: {
      selectSpecial: function(special) {
        special.selected = !special.selected;

          this.selectedSpecials.push(special);
          for (var i=0; i < this.selectedSpecials.length; i++) {
            if (!this.selectedSpecials[i].selected) {
              this.selectedSpecials.splice(i, 1);
              i--;
            } else if(this.selectedSpecials.length > 3) {
              this.selectedSpecials[this.selectedSpecials.length -1].selected = false;
            }

          } 




        console.log(this.selectedSpecials)
        console.log(this.selectedSpecials.length)

      }

    }

  });
});