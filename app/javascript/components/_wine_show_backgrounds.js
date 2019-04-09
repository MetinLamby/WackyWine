const leftside = document.querySelectorAll(".wine-name-show")
const addhere = document.querySelectorAll(".first-half-text")
const addhereright = document.querySelectorAll(".second-half-product")

if (leftside[0].innerHTML === "Beach Views") {
  addhere[0].classList.add("beach-views");
  addhereright[0].classList.add("beach-views-right");
}
else if (leftside[0].innerHTML === "Covered Eyes") {
  addhere[0].classList.add("covered-eyes");
  addhereright[0].classList.add("covered-eyes-right");
}
else if (leftside[0].innerHTML === "Flirt At Night") {
  addhere[0].classList.add("flirt-at-night");
  addhereright[0].classList.add("flirt-at-night-right");
}
else if (leftside[0].innerHTML === "Slow Motion") {
  addhere[0].classList.add("slow-motion");
  addhereright[0].classList.add("slow-motion-right");
}
else if (leftside[0].innerHTML === "Sunglow In The Dark") {
  addhere[0].classList.add("sunglow-in-the-dark");
  addhereright[0].classList.add("sunglow-in-the-dark-right");
}
else if (leftside[0].innerHTML === "Palm Trees") {
  addhere[0].classList.add("palm-trees");
  addhereright[0].classList.add("palm-trees-right");
}



