import 'package:flutter/material.dart';

void main() => runApp(JimenezApp());

class JimenezApp extends StatefulWidget {
  @override
  _JimenezAppState createState() => _JimenezAppState();
}

class _JimenezAppState extends State<JimenezApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }

  Widget card(String text) {
    return Card(
      color: Color(0xFFF8BBD0),
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  }

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars - Jimenez"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Mi perfil"),
          card("Noticias Recientes"),
          card("Tus notificaciones"),
          card("Agregar Publicacion"),
          card("Llamadas recientes"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Profile", Icon(Icons.account_circle)),
          tab("News", Icon(Icons.ad_units_rounded)),
          tab("Notificati", Icon(Icons.add_alert)),
          tab("Add", Icon(Icons.add_box)),
          tab("Calls", Icon(Icons.add_ic_call)),
        ],
      ),
    );
  }
}
