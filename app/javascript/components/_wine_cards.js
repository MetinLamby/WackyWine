const wineindex = document.querySelectorAll(".wine-card")
function checkconditionthree(x){
  if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Sweet Secret") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("sweet-secret");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Exotic Foreplay") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("exotic-foreplay");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Fruity Fetish") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("fruity-fetish");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Heavy Hickey") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("heavy-hickey");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Flavorful Flirt") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("flavorful-flirt");
  }

  else if (x.querySelectorAll(".wine-card-info")[0].querySelectorAll(".wine-name")[0].innerHTML === "Rich Confession") {
    x.querySelectorAll(".wine-card-product-image")[0].classList.add("rich-confession");
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

// adding the js for the navbar transparency

// const navbar = document.getElementById("nav");

// window.onscroll = function(){
//   if (window.pageYOffset > 60) {
//     navbar.style.background = "#000D19";
//     // navbar.style.borderBottom: "solid 1px white";
//   }
//   else{
//     navbar.style.background = "transparent";
//     // navbar.style.borderBottom: "none";
//   }
// }




