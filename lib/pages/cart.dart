import 'dart:async';
import 'dart:html';

import 'package:e_commerce/pages/common/src/app_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
      drawer: AppDrawer(),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ResponsiveBuilder(builder: (context, snapshot) {
                switch (snapshot.deviceScreenType) {
                  case DeviceScreenType.mobile:
                    return _MobileBodyWidget();
                    break;
                  case DeviceScreenType.tablet:
                    return _MobileBodyWidget();
                    break;
                  case DeviceScreenType.desktop:
                    return _WebBodyWidget();
                    break;
                  case DeviceScreenType.watch:
                    return SizedBox();
                    break;
                  default:
                    return SizedBox();
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}

class _MobileBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            physics: ScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            itemCount: 2,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shrinkWrap: true,
            itemBuilder: (context, index) => _CartItem(),
          ),
          SizedBox(
            height: 20,
          ),
          _MobileCheckoutForm(),
          SizedBox(
            height: 10,
          ),
          FooterWidget()
        ],
      ),
    );
  }
}

class _WebBodyWidget extends StatelessWidget {
  const _WebBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  child: _WebCheckoutForm(),
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
    );
  }
}

class _MobileCheckoutForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Add Enquiry',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black),
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your Name',
                labelText: 'Name'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your E-Mail',
                labelText: 'E-Mail'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your Contact Number',
                labelText: 'Contact Number'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your City',
                labelText: 'City'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your State',
                labelText: 'State'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter Your Country',
                labelText: 'Country'),
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
        ],
      ),
    );
  }
}

class _WebCheckoutForm extends StatelessWidget {
  const _WebCheckoutForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Add Enquiry',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.black),
        ),
        Divider(),
        SizedBox(
          height: 20,
        ),
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
