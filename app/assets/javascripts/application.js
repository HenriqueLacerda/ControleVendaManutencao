// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
   
   $( "#customer_cidade" ).autocomplete({
      source: "search.php",
      minLength: 2,
      select: function( event, ui ) {
        log( ui.item ?
          "Selected: " + ui.item.value + " aka " + ui.item.id :
          "Nothing selected, input was " + this.value );
      }
    });
    

//maskMoney() faz a mascara normal do Dolar
$("#dolar").maskMoney()
//Faz a mascara de moeda do Brasil
//maskMoney({symbol:"R$",decimal:",",thousands:"."})
$("#product_precoCompra").maskMoney({symbol:"R$",decimal:",",thousands:"."})
//Monta no modelo euro
$("#euro").maskMoney({symbol:"Euro",decimal:",",thousands:" "})
//A precisão do decimal (,000) ;
$("#precision").maskMoney({decimal:",",thousands:" ",precision:3})
 
//Para remover a mascara
$("#dolar").unmaskMoney();