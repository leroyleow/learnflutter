import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, Object> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late int selectedsize;

  @override
  void initState() {
    super.initState();
    selectedsize = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.product['title'].toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            //relative space due to diff image
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(widget.product['imageUrl'] as String),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 247, 249, 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Text(
                    "\$${widget.product['price']}",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //when number of items is unknown, use ListViewBuilder else use ListView
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            (widget.product['sizes'] as List<int>).length,
                        itemBuilder: (context, index) {
                          final size =
                              (widget.product['sizes'] as List<int>)[index];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedsize = size;
                                });
                              },
                              child: Chip(
                                backgroundColor: (size == selectedsize)
                                    ? Theme.of(context).colorScheme.primary
                                    : null, //null takes the default color that is given to it.
                                label: Text(
                                  size.toString(),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                      label: const Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
