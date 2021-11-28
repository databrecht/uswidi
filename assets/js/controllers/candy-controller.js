import { Controller } from "stimulus"
export default class extends Controller {
  selectTab(e) {
    window.location.replace(e.detail.href);
  }
}