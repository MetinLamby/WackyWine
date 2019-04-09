const wineindex = document.querySelectorAll(".wine-card")
function checkconditionthree(x){
  if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Palm Trees") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("palm-trees");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Beach Views") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("beach-views");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Sunglow In The Dark") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("sunglow-in-the-dark");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Covered Eyes") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("covered-eyes");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Flirt At Night") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("flirt-at-night");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Slow Motion") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("slow-motion");
  }
}
wineindex.forEach(x => checkconditionthree(x))


// js for snake in hame page

const snake = document.querySelectorAll(".products-array-snake")
const ball = document.querySelectorAll(".bottle-array-circle")

snake[0].addEventListener('mouseover', (event) => {
  ball.forEach(b => b.classList.add("new-margin"))
})

snake[0].addEventListener('mouseout', (event) => {
  ball.forEach(b => b.classList.remove("new-margin"))
})




