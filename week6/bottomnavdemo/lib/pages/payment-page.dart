import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Page"),
      ),
      body: PageView(
        children: [
          Container(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 3 / 5,
                ),
                itemBuilder: (c, index) {
                  return Card(
                    margin: EdgeInsets.zero,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
          Container(
              child: GridView.count(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children: List.generate(
                    8,
                    (index) => Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Balance"),
                          Icon(
                            Icons.payment_rounded,
                          )
                        ],
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
