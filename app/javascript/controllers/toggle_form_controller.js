import { Controller } from '@hotwired/stimulus';

export default class ToggleFormController extends Controller {
  static targets = [
    'disabledOption',
    'toggleList',
    'toggleForm',
    'toggleText',
    'focusField',
  ];
  static values = { showForm: Boolean };

  initialize() {
    this.showFormValue = false;
  }

  toggle() {
    this.showFormValue = !this.showFormValue;
  }

  showFormValueChanged() {
    this.showFormValue ? this.handleShowForm() : this.handleHideForm();
  }

  handleHideForm() {
    this.toggleTextTarget.innerHTML = 'Create new';
    this.disabledOptionTarget.disabled = false;
    this.toggleListTarget.classList.remove('hidden');
    this.toggleFormTarget.classList.add('hidden');
  }

  handleShowForm() {
    this.toggleTextTarget.innerHTML = 'Cancel';
    this.disabledOptionTarget.disabled = true;
    this.toggleListTarget.classList.add('hidden');
    this.toggleFormTarget.classList.remove('hidden');
    this.focusFieldTarget.focus();
  }
}
