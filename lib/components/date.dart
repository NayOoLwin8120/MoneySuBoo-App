import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ShowDate extends StatelessWidget {
  ShowDate({super.key});
  final now1 = DateFormat(' EEEE, M/d/y').format(DateTime.now());
  String _selectDate = 'Tap to select date';
  Future<void> _selectedDate(BuildContext context) async {
    final d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    // if (d != null)
    //if the user has selected a date
    // setState(()
    // {
    //   _selectDate = new DateFormat.yMMMMd("en_US").format(d);
    // }
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 250,
            height: 50,
            padding: const EdgeInsets.only(top: 12, left: 20),
            child: Text("$now1",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
              width: 150,
              height: 50,
              padding: const EdgeInsets.only(top: 4, left: 10),
              child: TextButton.icon(
                  onPressed: () {
                    _selectedDate(context);
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Select Date",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )))
        ],
      ),
    );
  }
}
