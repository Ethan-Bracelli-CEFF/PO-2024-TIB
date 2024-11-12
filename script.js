var buttons = [];

function init() {
  buttons = document.querySelectorAll('button.rep');

  buttons.forEach((e) => {
    e.addEventListener("click", ButtonSelected);
  })
}

function ButtonSelected() {
  buttons.forEach((e) => {
    e.classList.remove('btn');
    e.classList.remove('btn-success');
  })

  this.classList.add("btn");
  this.classList.add("btn-success");

  document.querySelector('#rep').value = this.value;
  document.querySelector('button.answ').classList.remove('disabled');
}