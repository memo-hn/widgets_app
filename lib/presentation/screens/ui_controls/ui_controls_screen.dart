import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {

      static const String name = 'ui_controls';

   
  const UiControlScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('UI Controls'),),
      body: const _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => __UiControlViewState();
}

enum Transportation {car, bus, plane, boat, submarine}

class __UiControlViewState extends State<_UiControlView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreadfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),


        ExpansionTile(
          title: const Text('Vehículo de transpporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar en auto'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By bus'),
              subtitle: const Text('Viajar en camión'),
              value: Transportation.bus,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.bus;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar en barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),


        CheckboxListTile(
          title: const Text('Desayuno'),
          value: wantsBreadfast, 
          onChanged: (value) => setState(() {
            wantsBreadfast =!wantsBreadfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Conida'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch =!wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner =!wantsDinner;
          }),
        ),

      ],
    );
  }
}