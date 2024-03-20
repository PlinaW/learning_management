import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  toggle() {
    const el = document.getElementById("mobile-links")
    const barsEl = document.getElementById("bars")
    const closeEl = document.getElementById("close")
    el.classList.toggle("display-none")
    barsEl.classList.toggle("display-none")
    closeEl.classList.toggle("display-none")
  }
}
