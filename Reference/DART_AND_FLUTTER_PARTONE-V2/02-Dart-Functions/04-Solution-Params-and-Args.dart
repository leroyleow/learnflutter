void main(){
  var result = calcArea(width:1,height:2);
  print(result);
}

double calcArea({double width=0,double height=0}){
  return width*height;
}