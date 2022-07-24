import 'command.dart';

void main() {
  Light myFavoriteLamb = Light();
  LightSwitch lightSwitch = LightSwitch(myFavoriteLamb);

  lightSwitch.perform('on');
  lightSwitch.perform('off');
  lightSwitch.perform('blink');
  lightSwitch.perform('on');

  print('-- History --');
  print(lightSwitch.history);
}
