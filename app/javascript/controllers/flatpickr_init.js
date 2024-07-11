import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

document.addEventListener('turbolinks:load', () => {
  flatpickr('.flatpickr', {
    enableTime: false,
    dateFormat: "Y-m-d"
  });
});
