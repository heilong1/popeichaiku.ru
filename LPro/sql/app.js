// _____________________________Готовая часть_________________

// NODA Page title
const tit = document.querySelector("title");

// NODA navig
const nav = document.querySelector("#topnav");

// NODA conteiner
const main = document.querySelector("#maincon");
main.style.top = nav.clientHeight + "px";
window.addEventListener("resize", () => {
  main.style.top = nav.clientHeight + "px";
});


// Code transfering
const codesNodes = document.querySelectorAll('.code')
for (code of codesNodes) {
  code.innerText = code.innerHTML
}

// ____________________________Тестовая часть__________________








// _________________________________Склад____________________
/*  





*/
