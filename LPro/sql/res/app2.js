// _____________________________Готовая часть_________________
console.log("Start!...");

const randomX = (min, max) => {
  return Math.trunc(Math.random() * (max - min + 1) + min);
};

// h1 colorer
const zag1 = document.getElementById("zag1");
const coloros = ["white", "black", "yellow", "red", "green", "blue", "orange"];
let c1 = 0;
setInterval(() => {
  zag1.style.color = coloros[c1];
  c1 = randomX(0, 6);
}, 500);



