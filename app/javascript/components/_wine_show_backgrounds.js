const leftside = document.querySelectorAll(".wine-name-show")
const addhere = document.querySelectorAll(".first-half-text")
const addhereright = document.querySelectorAll(".second-half-product")
const addheredescription = document.querySelectorAll(".description-show")



if (leftside[0].innerHTML === "Exotic Foreplay") {
  addhere[0].classList.add("exotic-foreplay");
  addhereright[0].classList.add("exotic-foreplay-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">2016 Rheingau Q.b.A. Liter feinherb<br><br>Terroir: Löss/Lehm<br><br>Dieser Riesling heißt zwar feinherb, hat jedoch eine feine Süße und eine ganz große Frucht. Ein eleganter klassischer Rheingau Riesling, der Freude ins Glas bringt. Ein schöner Maracuja und Mango Duft steigt auf und eine weiche, gerundete Säure gleitet langsam über die Zunge. Im Finale erwartet Sie ein herrliches Ananasanaroma – wow!</p>');
}
else if (leftside[0].innerHTML === "Heavy Hickey") {
  addhere[0].classList.add("heavy-hickey");
  addhereright[0].classList.add("heavy-hickey-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">Pfalz Q.b.A. Barrique 2016<br><br>Terroir: Löss/Lehm<br><br>St. Laurent/Da Capo/Dornfelder/Acolon/Spätburgunder/Dunkelfelder<br><br>Dieser vollmundige und zugleich animierende Rotwein stammt aus der Pfalz und wächst auf fruchtbarem Löss-Lehm Böden. In Barriquefässern gereift, entfaltet er eine unglaublich komplexe Aromatik aus dunklen Beeren und Röstaromen. Der Y Noir Reserve hat ein perfektes Säure-und Tanningerüst und begeistert dadurch auch echte Rotwein Liebhaber. Rotwein pur!</p>');
}
else if (leftside[0].innerHTML === "Flavorful Flirt") {
  addhere[0].classList.add("flavorful-flirt");
  addhereright[0].classList.add("flavorful-flirt-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">Pfalz Q.b.A. 2016<br><br>Terroir: Löss/Lehm<br><br>St. Laurent/Da Capo/Dornfelder/Acolon/Spätburgunder/Dunkelfelder<br><br>In diesem Wein aus der Pfalz finden sich die sonnengereiften Aromen von roten Beeren, getrockneten Früchten, Pflaumen und weichen Cassis Noten wider. Das Bouquet überzeugt mit lebhaften Fruchtnuancen. Ein aromatisch und feinfruchtiger, sowie animierender Rotwein mit einer sehr vielschichtigen Tanninstruktur, wie sie im Buche steht.</p>');
}
else if (leftside[0].innerHTML === "Rich Confession") {
  addhere[0].classList.add("rich-confession");
  addhereright[0].classList.add("rich-confession-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">2012 Rheinhessen Pinot Noir Barrique Q.b.A trocken<br><br>Terroir: Löss/Lehm<br><br>Ein wundervoller Rheinhessischer Pinot Noir Genuss, der sich im Holzfass entfalten durfte: Reife Beeren, Frühkirsche und spannende Anklänge von schwarzen Pfeffer.Ein eleganter und komplexer Repräsentant einer anspruchsvollen Rebsorte mit typischer Zwetschgenaromatik, wundervoll weich, rund und geschmeidig mit tollem Abgang – und zarter Holznote. Das ist wahre Burgunder Liebe, für die nächsten 10 Jahre in Flaschen abgefüllt.</p>');
}
else if (leftside[0].innerHTML === "Fruity Fetish") {
  addhere[0].classList.add("fruity-fetish");
  addhereright[0].classList.add("fruity-fetish-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">Rheinhessen Q.b.A. 2016<br><br>Terroir: Löss/Lehm<br><br>70% Weißburgunder/30% Chardonnay<br><br>Dieser cremige und saftige Weißburgunder Chardonnay stammt aus Rheinhessen und ist auf fruchtbaren Löss-Lehm Böden gewachsen. Teilweise im 500 Liter Holzfass ausgebaut zeigt er eine unwiderstehliche Note aus reifen, gelben Früchten und eine zarte Fülle, die ihn unverzichtbar als Essensbegleiter macht. Gleichzeitig amüsiert er mit feiner, sehr animierender Säure, dei ihm die nötige Frische verleiht.</p>');
}
else if (leftside[0].innerHTML === "Sweet Secret") {
  addhere[0].classList.add("sweet-secret");
  addhereright[0].classList.add("sweet-secret-right");
  addheredescription[0].insertAdjacentHTML('afterbegin',
    '<p style="color:white">2016 Rheingau Q.b.A. feinherb<br><br>Terroir: Löss/Lehm<br><br>Langeweile ist bei diesem animierendem feinherben Riesling Fehlanzeige! Am Gaumen schmelzig, weich und saftig. Schönes Süße-Säure-Gespann, im Nachhall saftig-kernig.Ein elegantes Duftspiel von Ananas, saftigem Pfirsich und eleganter Apfelblüte betört den Gaumen und macht Lust auf ein zweites Glas.</p>');
}

