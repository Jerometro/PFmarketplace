const showTotal = (newPrice) => {
  const price = document.querySelector("#total-price");
  price.innerHTML = `${newPrice}€`
}


const updatePrice = () => {
  const start_date = document.querySelector("#booking_start_date");
  const end_date = document.querySelector("#booking_end_date");
  if (start_date.value === "" || end_date.value === "") { return showTotal(0) };

  const price = document.querySelector("#total-price");
  const pricePerDay = parseInt(price.dataset.pricePerDay, 10);
  const numberOfDays = (new Date(end_date.value) - new Date(start_date.value)) / 86_400_000;
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
