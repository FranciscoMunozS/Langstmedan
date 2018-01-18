//= require rails-ujs
//= require jquery
//= require select2
//= require select2_locale_es
//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap_sb_admin_base_v2
//= require_tree .

$(document).ready(function() {
  $( "#observation_project_id" ).select2({
    width: 'resolve',
    placeholder: 'Seleccione o busque un proyecto',
    allowClear: true,
    language: "es",
    theme: "bootstrap"
  });
});

$(document).ready(function(){
  $('.datepicker').datepicker({
    language: "es",
    format: "dd/mm/yyyy",
    todayHighlight: true
  });
});

$(document).ready(function(){
  $('#notice').alert('close')
});

$(document).ready(function(){
  $('#projects').DataTable({
    "responsive": true,
    "language": {
      "url": "https://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
    }
  });
});
