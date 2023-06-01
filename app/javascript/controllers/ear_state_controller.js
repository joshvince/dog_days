import { Controller } from '@hotwired/stimulus';

export default class EarStateController extends Controller {
  static targets = ['form', 'option'];

  update() {
    this.formTarget.requestSubmit();
  }
}
