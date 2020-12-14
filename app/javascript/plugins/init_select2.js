import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2-operation').select2({
  width: '100%',
  placeholder: "Type d'opération" }); // (~ document.querySelectorAll)
  $('.select2-house').select2({
  width: '100%',
  placeholder: "Type de bien" }); // (~ document.querySelectorAll)
};

export { initSelect2 };
