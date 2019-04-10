const leftside = document.querySelectorAll(".wine-name-show")
const addhere = document.querySelectorAll(".first-half-text")
const addhereright = document.querySelectorAll(".second-half-product")

if (leftside[0].innerHTML === "Exotic Foreplay") {
  addhere[0].classList.add("beach-views");
  addhereright[0].classList.add("beach-views-right");
}
else if (leftside[0].innerHTML === "Heavy Hickey") {
  addhere[0].classList.add("covered-eyes");
  addhereright[0].classList.add("covered-eyes-right");
}
else if (leftside[0].innerHTML === "Flavorful Flirt") {
  addhere[0].classList.add("flirt-at-night");
  addhereright[0].classList.add("flirt-at-night-right");
}
else if (leftside[0].innerHTML === "Rich Confession") {
  addhere[0].classList.add("slow-motion");
  addhereright[0].classList.add("slow-motion-right");
}
else if (leftside[0].innerHTML === "Fruity Fetish") {
  addhere[0].classList.add("sunglow-in-the-dark");
  addhereright[0].classList.add("sunglow-in-the-dark-right");
}
else if (leftside[0].innerHTML === "Sweet Secret") {
  addhere[0].classList.add("palm-trees");
  addhereright[0].classList.add("palm-trees-right");
}



