// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(document).ready(function($){
    carregarMascaras();
});

function carregarMascaras(){
  $('.mask_fone').mask('(99) 9999-9999');
  $('.mask_cpf').mask('999.999.999-99');
  $('.mask_cnpj').mask('99.999.999/9999-99');
  $('.mask_cep').mask('99999-999');
  $('.datepick').mask('99/99/9999');
  $('.year').mask('9999');
  $('.plate').mask('AAA-9999');

}