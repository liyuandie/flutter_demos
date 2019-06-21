import 'package:flutter/material.dart';

// class Product {
//   final String title; //商品标题
//   final String discription;
//   Product(this.title, this.discription);
// }

// void main() {
//   runApp(MaterialApp(
//     title: '导航的数据传递和接收',
//     home: ProductList(
//         products:
//             List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号: $i'))),
//   ));
// }

// class ProductList extends StatelessWidget {
//   final List<Product> products;

//   ProductList({Key key, @required this.products}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('商品列表'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           ProductDetail(product: products[index])));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProductDetail extends StatelessWidget {
//   final Product product;

//   ProductDetail({Key key, @required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//       ),
//       body: Center(
//         child: Text('${product.discription}'),
//       ),
//     );
//   }
// }
void main() {
  runApp(MaterialApp(title: '页面跳转返回数据', home: HomePage()));
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找小姐姐要电话'),
      ),
      body: Center(
        child: RouteBtn(),
      ),
    );
  }
}

class RouteBtn extends StatelessWidget {
  RouteBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigate2Xjj(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _navigate2Xjj(BuildContext context) async {
    final res = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$res'),
    ));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小姐姐'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, "大长腿小姐姐：131775757575");
              },
              child: Text('大长腿小姐姐'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, "小蛮腰小姐姐：1239494944");
              },
              child: Text('小蛮腰小姐姐'),
            )
          ],
        ),
      ),
    );
  }
}
