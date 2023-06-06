import { Controller } from '@hotwired/stimulus';

export default class MealController extends Controller {
  static targets = [
    'form',
    'option',
    'list',
    'creator',
    'toggleText',
    'emojiField',
  ];
  static values = { showMealCreator: Boolean };

  initialize() {
    this.showMealCreatorValue = false;
  }

  add() {
    this.formTarget.requestSubmit();
  }

  toggle() {
    this.showMealCreatorValue = !this.showMealCreatorValue;
  }

  showMealCreatorValueChanged() {
    this.showMealCreatorValue
      ? this.handleShowMealCreator()
      : this.handleHideMealCreator();
  }

  handleHideMealCreator() {
    this.toggleTextTarget.innerHTML = 'Create a new meal';
    this.optionTarget.disabled = false;
    this.listTarget.classList.remove('hidden');
    this.creatorTarget.classList.add('hidden');
  }

  handleShowMealCreator() {
    this.toggleTextTarget.innerHTML = 'Cancel';
    this.optionTarget.disabled = true;
    this.listTarget.classList.add('hidden');
    this.creatorTarget.classList.remove('hidden');
    this.emojiFieldTarget.focus();
    this.emojiFieldTarget.placeholder = '🧆';
  }
}
