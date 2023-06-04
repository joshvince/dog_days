import { Controller } from '@hotwired/stimulus';

export default class MealController extends Controller {
  static targets = ['form', 'option'];

  add() {
    this.formTarget.requestSubmit();
  }
}
