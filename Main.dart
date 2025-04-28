void main() {
  String myname = "Aroub ALzghoul";
  print(myname[0].toUpperCase());
  int myage = 27;
  print(myage);
  double myhighets = -156.3;
  print(myhighets.ceil());
  //ceil بتعمل تقريب لأقرب رقم صحيح
  print(myhighets.floor());
  //floor بتاخذ الرقم الصحيح فقط بدون مابعد الفاصلة
  print(myhighets.round());
  //round بتعمل تقريب .5 وفةق بزيد 1 .5 وتحت بنقص واحد
  print(myhighets.isNegative);
  print(myhighets.abs());
  //abs قيمة مطلقة "بحول السالب لموجب "
  print(myhighets + 10);
  int myageafter10years = myage + 10;
  print("this is my age after 10 years $myageafter10years");
}
