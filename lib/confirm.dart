
import 'package:flutter/material.dart';

class confirm extends StatefulWidget {
  String date;
  confirm(this.date);
  @override
  State<confirm> createState(){return _confirmState(this.date);}
}

class _confirmState extends State<confirm> {
  final String date;
  _confirmState(this.date);
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: <Widget>[
          const Image(image:AssetImage('assests/pro_background1.png')),
          Text('Welcome to',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium ?.merge(const TextStyle(
                color: Color(0xff606060),fontWeight: FontWeight.bold,))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Univest PR',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge ?.merge(const TextStyle(
                    color: Color(0xff202020),
                    fontWeight: FontWeight.bold,))),
              const Image(image:AssetImage('assests/pro_tag_large.png'),
                width: 50,
                height: 50,
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Text('Your 12 months plan has been successfully',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium ?.merge(const TextStyle(
                  color: Color(0xff606060),fontWeight: FontWeight.bold))),
          Text('activated. Earn more returns now!',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium ?.merge(const TextStyle(
                  color: Color(0xff606060),fontWeight: FontWeight.bold))),
          Expanded(child: SizedBox()),
          RichText(
            text: TextSpan(
              text: 'Membership active till',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.merge(const TextStyle(
                  color: Color(0xff202020))),
              children: const <TextSpan>[
                TextSpan(
                    text:date,
                    style: TextStyle(
                      color: Color(0xff00439D),
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          // Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50, //height of button
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color(0xff202020),
                  foregroundColor: Colors.black,
                  elevation: 0,
                ),
                child: Text(
                  'Continue to app home',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.merge(const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold)),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
