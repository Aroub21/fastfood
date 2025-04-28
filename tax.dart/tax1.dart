// تعريف دالة تقوم بحساب السعر بعد إضافة الضريبة وطباعة تفاصيل الطلب
void printItemInfoWithTax({required int orderID, required double price}) {
  const double tax = 0.02; // تعريف قيمة الضريبة الثابتة

  double newPrice = price + tax; // حساب السعر الجديد بعد إضافة الضريبة

  // طباعة معلومات الطلب: معرف الطلب والسعر الجديد
  print('----------------------------------------');
  print('Order Information:');
  print('Order ID   : $orderID');
  print(
    'New Price  : \$${newPrice.toStringAsFixed(2)}',
  ); // تنسيق السعر ليظهر برقمين عشريين
  print('----------------------------------------\n');
}

void main() {
  // إنشاء قائمة الطلبات، كل طلب عبارة عن خريطة تحتوي على معرّف الطلب، اسم الطلب، وسعره
  List<Map<String, dynamic>> orders = [
    {'orderID': 1, 'ordername': 'cola', 'price': 10},
    {'orderID': 2, 'ordername': 'chips', 'price': 20},
  ];

  // المرور على جميع الطلبات واستدعاء الدالة لطباعة معلومات كل طلب
  for (var order in orders) {
    printItemInfoWithTax(
      orderID: order['orderID'],
      price: (order['price']).toDouble(),
    );
  }
}
