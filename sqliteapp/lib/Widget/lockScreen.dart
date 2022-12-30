import 'package:flutter/material.dart';
import 'package:sqliteapp/Modelo/diary.dart';
import 'package:sqliteapp/Page/homePage.dart';

class LockScreen extends StatefulWidget {
  late List<Diary>? diaries;

  LockScreen({
    Key? key,
    this.diaries,
  }) : super(key: key);

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  late bool isNewDiary = true;

  @override
  void initState() {
    List<Diary>? diaries = widget.diaries;
    if (diaries != null) {
      isNewDiary = diaries.isEmpty;
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Diary>? diaries = widget.diaries;
    TextEditingController ctrlType = TextEditingController();
    TextEditingController ctrlCode = TextEditingController();
    Diary dropDownValue = Diary();

    // onChangedDiary(Diary diary) {
    setState(() {
      //dropDownValue = diary;
      dropDownValue = (diaries != null) ? diaries[0] : Diary();
    });
    // }

    dropDownButton() {
      if (diaries != null) {
        return (diaries.isNotEmpty)
            ? DropdownButton<Diary>(
                onChanged: (Diary? diary) {
                  setState(() {
                    dropDownValue = diary!;
                  });
                },
                value: dropDownValue,
                icon: const Icon(Icons.arrow_drop_down),
                items: diaries.map<DropdownMenuItem<Diary>>((Diary value) {
                  return DropdownMenuItem<Diary>(
                    value: value,
                    child: Text(value.type),
                  );
                }).toList(),
              )
            : const SizedBox.shrink();
      } else {
        return const SizedBox.shrink();
      }
    }

    goHome(Diary diary) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            diary: diary,
          ),
        ),
      );
    }

    save() async {
      Diary diary =
          await Diary(type: ctrlType.text, enterCode: ctrlCode.text).save();

      if (diary != null) {
        goHome(diary);
      }
    }

    unlock() async {
      Diary diary = await dropDownValue.checkEnterCode(ctrlCode.text);
      goHome(diary);
    }

    return Column(
      children: [
        Visibility(
          visible: !isNewDiary,
          child: dropDownButton(),
        ),
        Visibility(
          visible: isNewDiary,
          child: TextFormField(
            decoration: const InputDecoration(hintText: "Tipo de diario"),
            keyboardType: TextInputType.text,
            controller: ctrlType,
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(hintText: "Codigo"),
          keyboardType: TextInputType.text,
          controller: ctrlCode,
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.pinkAccent,
            ),
          ),
          onPressed: isNewDiary ? save : unlock,
          child: Text(
            isNewDiary ? "Guardar" : "Desbloquear",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        )
      ],
    );
  }
}
