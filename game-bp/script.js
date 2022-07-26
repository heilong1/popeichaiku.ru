let seif = document.createElement("div");
seif.classList.add("seif");

for (let i = 1; i < 17; i++) {
  let excel = document.createElement("div");
  excel.classList.add("excel");
  seif.appendChild(excel);
}

let main = document.getElementsByClassName("main")[0];
main.appendChild(seif);

let excel = document.getElementsByClassName("excel");
let i = 0;

for (let y = 1; y < 5; y++) {
  for (let x = 1; x < 5; x++) {
    excel[i].setAttribute("posX", x);
    excel[i].setAttribute("posY", y);
    i++;
  }
}

// стартовое размещение цветов
function plusing(...rest) {
  for (const cell of rest) {
    excel[cell].classList.add("plus");
  }
}
plusing(0,2,3,5,6,8,9,11,14,15)

function minusing(...rest) {
  for (const cell of rest) {
    excel[cell].classList.add("minus");
  }
}
minusing(1,4,7,10,12,13)

// слушатель и двигатель и победитель
seif.addEventListener('click', (event) => {
  myCell = event.target
  x = myCell.attributes[1].value
  y = myCell.attributes[2].value
  swap(x,y)
  win()
})

// сваппер
let swap = (x,y) => {
  let qwe = document.querySelector(`[posx = "${x}"][posy = "${y}"]`);
  if (qwe.classList.contains("plus")) qwe.classList.replace("plus", "minus");
  else qwe.classList.replace("minus", "plus");

  for (let i = 1; i < 5; i++) {
    qwe = document.querySelector(`[posx = "${i}"][posy = "${y}"]`);
    if (qwe.classList.contains("plus")) qwe.classList.replace("plus", "minus");
    else qwe.classList.replace("minus", "plus");
  }
  for (let i = 1; i < 5; i++) {
    qwe = document.querySelector(`[posx = "${x}"][posy = "${i}"]`);
    if (qwe.classList.contains("plus")) qwe.classList.replace("plus", "minus");
    else qwe.classList.replace("minus", "plus");
  }
};

// победитор
let win = () => {
  let winner = 1
  for (const cell of excel) {
    if (cell.classList.contains("minus")) winner = 0
  }
  if (winner === 1) {
    alert('Победаааа!')
  }
}