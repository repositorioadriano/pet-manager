// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
#= require twitter/bootstrap/transition
#= require twitter/bootstrap/alert
#= require twitter/bootstrap/modal
#= require twitter/bootstrap/button
#= require twitter/bootstrap/collapse
#= require twitter/bootstrap/popover

//= require simple_form_autocomplete
//= require maskedinput

jQuery(function($){
   $("#date").mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
   $("#funcionario_fone").mask("(99) 9999-9999");
   $("#funcionario_celular").mask("(99) 99999-9999");
   $("#funcionario_cep").mask("99999-999");

   //Mascaras form cliente.
   $("#cliente_cpf").mask("999.999.999.99");
   $("#cliente_telefone").mask("(99) 9999-9999");
   $("#cliente_celular").mask("(99) 9999-9999");
   $("#cliente_cep").mask("99999-999");

   //Mascaras form fornecedores
   $("#fornecedor_cnpj").mask('00.000.000/0000-00', {reverse: true});
   $("#fornecedor_telefone").mask("(99) 9999-9999");
   $("#fornecedor_cep").mask("99999-999");
   $(".help-block").remove();
   $('[data-toggle="popover"]').popover(); 

});
