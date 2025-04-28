void main() {
  // قائمة الطلبات
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'pasta'},
    {'id': 5, 'status': 'vip', 'item': 'burger'},
    {'id': 6, 'status': 'ready', 'item': 'nuggets'},
  ];

  // المرور على الطلبات
  for (var order in orders) {
    // تخطي الطلبات الملغية
    if (order['status'] == 'canceled') {
      continue;
    }

    // التحقق من طلب VIP
    if (order['status'] == 'vip') {
      print('VIP order found! Prioritize this order.');
      print('Order Details: ${order['item']} (ID: ${order['id']})');
      break;
    }

    // طباعة رسالة إذا كان ID الطلب = 4
    if (order['id'] == 4) {
      print('Order ID 4 is taking too long! Alert the kitchen.');
    }

    // استخدام switch حسب نوع الوجبة
    switch (order['item']) {
      case 'burger':
        print('Preparing a delicious burger...');
        break;
      case 'pizza':
        print('Baking a cheesy pizza...');
        break;
      case 'fries':
        print('Frying some crispy fries...');
        break;
      case 'nuggets':
        print('Cooking some tasty nuggets...');
        break;
      default:
        print('Unknown food item: ${order['item']}');
    }

    print('------------------------'); // فاصل للوضوح
  }
}
