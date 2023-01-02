import 'package:flutter/material.dart';
import 'package:sqliteapp/Modelo/page.dart' as pm;
import 'package:sqliteapp/Modelo/diary.dart';

typedef VoidCallbackParam(Page page);

class FormPage extends StatefulWidget {
  Diary? diary;
  pm.Page? page;
  VoidCallbackParam voidCallbackParam;

  FormPage(this.voidCallbackParam, {Key? key, this.diary, this.page})
      : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late pm.Page page;
  TextEditingController ctrlDate = TextEditingController();
  TextEditingController ctrlTitle = TextEditingController();
  TextEditingController ctrlContent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getTextBox() {
      if (page.id > 0) {
        page.title = ctrlTitle.text;
        page.content = ctrlContent.text;
        page.date = ctrlDate.text;
      }
    }

    save() async {
      getTextBox();
      pm.Page page = await pm.Page().saveOrUpdate();

      if (page.id > 0) {
        widget.voidCallbackParam(page);
        Navigator.pop(context);
      }
    }

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              controller: ctrlDate,
              enabled: false,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Titulo"),
              keyboardType: TextInputType.text,
              controller: ctrlTitle,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Contenido"),
              keyboardType: TextInputType.text,
              controller: ctrlContent,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.pinkAccent,
                ),
              ),
              onPressed: save,
              child: const Text(
                "Guardar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
