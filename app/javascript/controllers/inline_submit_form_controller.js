import { Controller } from '@hotwired/stimulus';

export default class InlineSubmitFormController extends Controller {
  static targets = ['form'];

  submit() {
    this.formTarget.requestSubmit();
  }
}
