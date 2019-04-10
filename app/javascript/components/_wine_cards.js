const wineindex = document.querySelectorAll(".wine-card")
function checkconditionthree(x){
  if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Sweet Secret") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("palm-trees");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Exotic Foreplay") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("beach-views");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Fruity Fetish") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("sunglow-in-the-dark");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Heavy Hickey") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("covered-eyes");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Flavorful Flirt") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("flirt-at-night");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Rich Confession") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("slow-motion");
  }
}
wineindex.forEach(x => checkconditionthree(x))


// js for snake in hame page

window.onload=function(){
  const snake = document.querySelectorAll(".products-array-snake")
  const ball = document.querySelectorAll(".bottle-array-circle")


  snake[0].addEventListener('mouseover', (event) => {
    ball.forEach(b => b.classList.add("new-margin"))
  })

  snake[0].addEventListener('mouseout', (event) => {
    ball.forEach(b => b.classList.remove("new-margin"))
  })
}




