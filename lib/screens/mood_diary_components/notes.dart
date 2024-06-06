import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotesWidget extends StatefulWidget {
  const NotesWidget({super.key});

  @override
  State<NotesWidget> createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> {

  final TextEditingController _textEditingController = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 4),
              color: Color.fromRGBO(182, 161, 192, 0.11),
              blurRadius: 10.8,
              spreadRadius: 0.0,
            ),
          ]),
      child: TextFormField(
        maxLines: null,
        controller: _textEditingController,
        cursorColor: const Color.fromRGBO(76, 76, 105, 1),
        style: const TextStyle(
          fontFamily: 'Nunito',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(76, 76, 105, 1),
        ),
        cursorHeight: 19,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Введите заметку',
          hintStyle: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(225, 221, 216, 1),
          ),
          contentPadding: const EdgeInsets.all(0),
          errorText: _validate ? "Заполните поле" : null,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
