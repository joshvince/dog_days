import { Controller } from '@hotwired/stimulus';

export default class MedicineController extends Controller {
  static targets = ['form', 'option'];

  add() {
    this.formTarget.requestSubmit();
  }
}
