import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['item', 'content'];

  connect() {
    console.log('Hello from infopanel_controller.js')
    // console.log(this.testTarget)
  }

  show(e) {
    e.preventDefault();
    let currentIndex = parseInt(this.data.get('index'));

    this.desactivate(currentIndex);

    this.itemTargets.forEach((item, index) => {
      if (item === e.target) {
        this.activate(index);
      }
    });
  }

  desactivate(index) {
    this.itemTargets[index].classList.remove('active');
    this.contentTargets[index].classList.remove('show', 'active');
  }

  activate(index) {
    this.itemTargets[index].classList.add('active');
    this.contentTargets[index].classList.add('show', 'active');

    this.data.set('index', index);
  }
}
