import 'dart:html';

import './common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: ScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      itemCount: 20,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => _CartItem(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: CheckOutFormWidget(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}

class CheckOutFormWidget extends StatelessWidget {
  CheckOutFormWidget({
    Key key,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Add Enquiry', style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.black),),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your Name',
                        labelText: 'Name'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your E-Mail',
                        labelText: 'E-Mail'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your Contact Number',
                        labelText: 'Contact Number'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your City',
                        labelText: 'City'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your State',
                        labelText: 'State'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Enter Your Country',
                        labelText: 'Country'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                SizedBox(
                  width: 10,
                ),
                Text('I agree the terms and conditions')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Submit')),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class _CartItem extends StatefulWidget {
  @override
  __CartItemState createState() => __CartItemState();
}

class __CartItemState extends State<_CartItem> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            FlutterLogo(
              size: 120,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Product Description')
              ],
            )),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(40, 40))),
                      onPressed: () {},
                      child: Text('+'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(40, 40))),
                      onPressed: () {},
                      child: Text('-'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton.icon(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.delete_outline),
                    label: Text('Remove'))
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
