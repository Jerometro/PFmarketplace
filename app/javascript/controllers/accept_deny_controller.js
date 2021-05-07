
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "accept", "deny" ]

  connect() {

  }

  update() {
    const csrfToken = document.querySelector("[name='csrf-token']").content
    const acceptPath = this.acceptTarget.dataset.url

    fetch(acceptPath, { method: "PATCH", headers: { accept: "application/json", "X-CSRF-Token": csrfToken }})
    .then(response => response.json())
    .then((data)=> {
      this.updateCard(data)
    })
  }

  updateCard(data) {
    const htmlObject = document.createElement('div');
    htmlObject.innerHTML = data.response;
    console.log(htmlObject.firstElementChild);
    this.element.innerHTML = htmlObject.firstElementChild.innerHTML;
  }
}
