const showTotal = (newPrice) => {
  const price = document.querySelector("#total-price");
  price.innerHTML = `${newPrice}€`
}


const updatePrice = () => {
  const start_date = document.querySelector("#booking_start_date");
  let end_date = document.querySelector("#booking_end_date");
  if (start_date.value === "" || end_date.value === "") { return showTotal(0) };
  if (end_date.value < start_date.value) {
    end_date.value = start_date.value
  };

  const startDateElements = start_date.value.split("\/");
  const endDateElements = end_date.value.split("\/");
  const price = document.querySelector("#total-price");
  const pricePerDay = parseInt(price.dataset.pricePerDay, 10);
  const numberOfDays = (new Date(endDateElements[2], endDateElements[1], endDateElements[0]) - new Date(startDateElements[2], startDateElements[1], startDateElements[0])) / 86_400_000;
  const total = pricePerDay * numberOfDays;
  showTotal(total);
}

const showTotalPrice = () => {
  const start_date = document.querySelector("#booking_start_date");
  const end_date = document.querySelector("#booking_end_date");
  if (!start_date || !end_date) { return }

  [start_date, end_date].forEach(item => {
      item.addEventListener("change", updatePrice )
    })
}



export { showTotalPrice };
