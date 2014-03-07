//
// Inspired by tjpzoom - http://valid.tjp.hu/zoom/
//

function tt_click()
{
  lastxx=xx; lastyy=yy;

  var x;
  var system = -1;
  for (x in mapdata)
  {
    if ((mapdata[x][1] >= lastxx - 3 && mapdata[x][1] <= lastxx + 3) && (mapdata[x][2] >= lastyy-3 && mapdata[x][2] <= lastyy+3))
    {
      document.location = "index.php?p=kills&system=" + mapdata[x][0];
    }
  }
  return false;
}

function tt_move(evt) {
 if(typeof(evt) == 'object') {
  var evt = evt?evt:window.event?window.event:null; if(!evt){ return;}
  if(evt.pageX) {
   xx=evt.pageX - ffox;
   yy=evt.pageY - ffoy;
  } else {
   xx=evt.x - ieox-5 + document.documentElement.scrollLeft;
   yy=evt.y - ieoy-4 + document.documentElement.scrollTop;
  }
 } else {
  xx=lastxx; yy=lastyy;
 }
 lastxx=xx; lastyy=yy;

 var x;
 var system = -1;
 for (x in mapdata)
 {
   if ((mapdata[x][1] >= lastxx - 2 && mapdata[x][1] <= lastxx + 2) && (mapdata[x][2] >= lastyy-2 && mapdata[x][2] <= lastyy+2))
   {
     system = x;
   }
 }

 var foo = document.getElementById('t1').style;
 var bar = document.getElementById('t1');

 if (system == -1)
 {
   foo.visibility = "hidden";
   return false;
 }        

 var pwidth = window.innerWidth != null? window.innerWidth: document.body.clientWidth != null? document.body.clientWidth:null;

 if (foo.visibility != "visible")
 {
   if (bar.offsetWidth) ew = bar.offsetWidth;
   else if (bar.clip.width) ew = bar.clip.width;

   if(evt.pageX) {
     mouseX = evt.pageX;
     mouseY = evt.pageY;
   } else {
     mouseX = evt.x + document.documentElement.scrollLeft;
     mouseY = evt.y + document.documentElement.scrollTop;
   }
   tv = mouseY + 20;
   lv = mouseX;

   if (lv < 2) lv = 2;
   else if (lv + ew > pwidth) lv -= ew/2;

   lv += 'px';tv += 'px';

   bar.innerHTML = mapdata[system][0] + "<br>Ships Destroyed: " + mapdata[system][3];
   foo.left = lv; foo.top = tv; foo.visibility = "visible";
 }

 return false;
}

function tt_off() {
  var foo = document.getElementById('t1').style;
  foo.visibility = "hidden";
  tipid = '';
}

function countoffset() {
 ieox=0;ieoy=0;
 for(zmi=0;zmi<50;zmi++) {
   zme='document.getElementById(tipid)';
   for(zmj=1;zmj<=zmi;zmj++) {
     zme+='.offsetParent';
   }
   if(eval(zme)+1 == 1) {
     zmi=100
   } else {
     ieox+=eval(zme+'.offsetLeft'); ieoy+=eval(zme+'.offsetTop');
   }
 }
 ffox=ieox;
 ffoy=ieoy;
 ieox-=document.body.scrollLeft;
 ieoy-=document.body.scrollTop;
}

function tt_on(evt) {
 thisid = 'tip';
 if(tipid==thisid) { return;}
 var evt = evt?evt:window.event?window.event:null;
 if(!evt){ return;}

 tipid=thisid;

 if(evt.pageX) {
  evt.target.parentNode.id=thisid;
  countoffset();
  lastxx=evt.pageX - ffox;
  lastyy=evt.pageY - ffoy;
 } else {
  evt.srcElement.parentNode.id=thisid;
  countoffset();
  lastxx=evt.x - ieox;
  lastyy=evt.y - ieoy;
 }

 tt_move('');
 return false;
}

var tipid=''; var ieox=0; var ieoy=0; var ffox=0; var ffoy=0;
