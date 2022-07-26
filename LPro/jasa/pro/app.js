console.log('start!!! ..')

const teg1 = document.getElementById('zag1')

const x = new Promise( (resolve, reject) => {
  setInterval( () => {
    setTimeout( () =>{
      teg1.style.color = 'red'
      document.body.style.background = 'blue'
    }, 3000)
    setTimeout( () =>{
      teg1.style.color = 'green'
      document.body.style.background = 'red'
    }, 4000) 
    setTimeout( () =>{
      teg1.style.color = 'blue'
      document.body.style.background = 'green'
    }, 5000)
  }, 3000)
})


/*
function fetchTodos() {
  console.log('fetch todo started...');
  return del(2000)
  .then(() => fetch(url))
  .then(responce => responce.json())
}

fetchTodos()
.then(data => console.log(data))
.catch(e => console.error(e))




*/
