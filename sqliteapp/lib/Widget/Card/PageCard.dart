import 'package:sqliteapp/Page/formPage.dart';
import 'package:sqliteapp/Modelo/page.dart' as pm;
import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  pm.Page page;
  VoidCallbackParam voidCallbackParam;
  PageCard(this.voidCallbackParam, this.page);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: () => onPressPage(context),
        child: Card(
          elevation: 5,
          child: Row(
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: Icon(Icons.calendar_today),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      page.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Colors.pinkAccent,
                        ),
                        Text(
                          page.date,
                          style: const TextStyle(fontSize: 11),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  onPressPage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FormPage(
            voidCallbackParam,
            page: page,
          ),
        ));
  }
}
