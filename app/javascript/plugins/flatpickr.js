import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: "today",
    defaultDate: new Date(),
    dateFormat: "d/m/Y",
  });
}

export { initFlatpickr };
