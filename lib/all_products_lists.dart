class Products {
  String image, pname, text, rent, detail;

  Products(this.image, this.pname, this.text, this.rent, this.detail);

  List<Products> getOutdoorList() {
    return outdoor;
  }

  List<Products> gettoolslist() {
    return tools;
  }

  List<Products> getchildrenlist() {
    return children;
  }

  List<Products> getsportslist() {
    return sports;
  }

  List<Products> getvehiclelist() {
    return vehicle;
  }

  List<Products> getfurniturelist() {
    return furniture;
  }

  List<Products> getrealestatelist() {
    return realestate;
  }

  List<Products> getbabylist() {
    return baby;
  }

  List<Products> getclothlist() {
    return cloth;
  }

  List<Products> getelectronicslist() {
    return electric;
  }

  List<Products> getmusicallist() {
    return music;
  }

  List<Products> geteventlist() {
    return party;
  }
}

List<Products> outdoor = [
  Products('outdoor/img.png', 'Small Grill', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img1.png', 'BBQ Grill', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img2.png', 'Smoker', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img3.png', 'High End Grill', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img4.png', 'Egg Grill', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img5.png', 'Outdoor Grill', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img6.png', 'Portable Grill', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img7.png', 'Smoke Grill', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img8.png', 'Camp', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img9.png', 'Vanity', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img10.png', 'Boat', 'Arlington, Tx', '\$150 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('outdoor/img11.png', 'Beach By Cycle', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> tools = [
  Products(
      'tools/100toncompresstool.png',
      '100 Tons Compress',
      'Arlington, Tx',
      '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('tools/chainsaw.png', 'Chainsaw', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('tools/drill.png', 'Drill', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/earthdriller.png',
      'Earth Driller',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/Extantionladder.png',
      'Extantion Ladder',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/genrator.png',
      'Electricity Generator',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/grdinning_cutter.png',
      'Gardening Cutter',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('tools/pipewrench.png', 'Pipe Wrench', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/sewingmachine.png',
      'Sewing Machine',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('tools/toolbox.png', 'Tool Box', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('tools/woodcutter.png', 'Wood Cutter', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'tools/propaneforge.png',
      'Propane Forge',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> children = [
  Products(
      'children/animalwahicle.png',
      'Animal Vehicle',
      'Arlington, Tx',
      '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/buggy.png', 'Buggy', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/costume.png', 'Costume', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'children/inflatablebaloon.png',
      'Inflatable Baloon',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'children/inflatableplayground.png',
      'Inflatable Playground',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'children/joystick.png',
      'Self Control Vehicle',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/jumping.png', 'Jumping Pad', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/parkslide.png', 'Park Slide', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'children/skateboard.png',
      'Skateboard',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/skates.png', 'Skates', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/skoter.png', 'Scooter', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('children/train.png', 'Mini Train', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> sports = [
  Products(
      'sports/badmintennet.png',
      'Badminton Net',
      'Arlington, Tx',
      '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/baskeetballpool.png',
      'Basketball Pools',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('sports/cricketnet.png', 'Cricket Net', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/gymnasticmatrice.png',
      'Gymnastic Matrices',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/gymnasticpool.png',
      'Gymnastic Pool',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/highjumpstands.png',
      'High Jump Stands',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('sports/racingbike.png', 'Sports Bike', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('sports/skates.png', 'Skates', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/soocerpools.png',
      'Soccer Pools',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('sports/sportscar.png', 'Sports Car', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/watermoterbike.png',
      'Water Bike',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'sports/wrestlingring.png',
      'Wrestling Ring',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> vehicle = [
  Products('vehicles/bus.png', 'Bus', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/cycle.png', 'Cycle', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/krain.png', 'Krain', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/lemozine.png', 'Lemozine', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/lifter.png', 'Lifter', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'vehicles/roadroler.png',
      'Road Roller',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/schoolbus.png', 'School Bus', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/sports.png', 'Sports Car', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'vehicles/sportsbike.png',
      'Sports Bike',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/tractor.png', 'Tractor', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/trolly.png', 'Trolly', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('vehicles/truck.png', 'Truck', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> furniture = [
  Products('furniture/bed.png', 'Bed', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/conference.png',
      'Outdoor Conference',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/dinning.png',
      'Dinning Table',
      'Arlington, Tx',
      '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/meetingset.png',
      'Meeting Set',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/outdoortable.png',
      'Outdoor Table',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/partydinning.png',
      'Party Dinning',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('furniture/sofa.png', 'Sofa', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/sonbathchair.png',
      'Son Bath Chair',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('furniture/teatable.png', 'Tea Table', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/weddingfurniture.png',
      'Weeding Furniture',
      'Arlington, Tx',
      '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/weddingsitting.png',
      'Weeding Sitting',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'furniture/workingtable.png',
      'Working Table',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> realestate = [
  Products(
      'realistate/appartment.png',
      'Apartments',
      'Arlington, Tx',
      '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('realistate/building.png', 'Buildings', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/cricketground.png',
      'Cricket Ground',
      'Arlington, Tx',
      '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/golfground.png',
      'Golf Ground',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('realistate/hotalroom.png', 'Hotel', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('realistate/house.png', 'House', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/landforfields.png',
      'Fields',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/office.png',
      'Park Office Setup',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/partyland.png',
      'Party Land',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('realistate/resort.png', 'Resort', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/school.png',
      'School Building',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'realistate/soocer.png',
      'Soocer Ground',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> baby = [
  Products('baby/img.png', 'Baby Toddler', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img1.png', 'Baby Toddler', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img2.png', 'Baby Toddler', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img3.png', 'Baby Toddler', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img4.png', 'Baby Toddler', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img5.png', 'Baby Toddler', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img6.png', 'Baby Toddler', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img7.png', 'Baby Toddler', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img8.png', 'Baby Toddler', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img9.png', 'Baby Toddler', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img10.png', 'Baby Toddler', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('baby/img11.png', 'Baby Toddler', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> cloth = [
  Products('costume/bat.png', 'Batman Costume', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/grass.png', 'Grass Costume', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/hunter.png', 'Hunter Costume', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/jocker.png', 'Joker Costume', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/longjacket.png', 'Jacket', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'costume/ninja.png',
      'Baby Ninja Costume',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/police.png', 'Police Costume', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('costume/prince.png', 'Prince', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'costume/skaloton.png',
      'Skaloton Costume',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'costume/soldier.png',
      'Soldier Costume',
      'Arlington, Tx',
      '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'costume/spider.png',
      'Spiderman Costume',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'costume/super.png',
      'Superman Costume',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> electric = [
  Products('electronics/camera.png', 'Camera', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/camerastand.png',
      'Camera Stand',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/discolight.png',
      'Disco Light',
      'Arlington, Tx',
      '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/drwoncamera.png',
      'Drown Camera',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('electronics/fridge.png', 'Fridge', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/genrator.png',
      'Electricity Generator',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('electronics/laptop.png', 'Laptop', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/partyspeaker.png',
      'Party Speaker',
      'Arlington, Tx',
      '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/projector.png',
      'Projector',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/stagebackgroundled.png',
      'Stage LED',
      'Arlington, Tx',
      '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/windowac.png',
      'Window AC',
      'Arlington, Tx',
      '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products(
      'electronics/wirelesscommand.png',
      'Wireless Communication',
      'Arlington, Tx',
      '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> music = [
  Products('music/img.png', 'Music Instrument', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img1.png', 'Music Instrument', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img2.png', 'Music Instrument', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img3.png', 'Music Instrument', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img4.png', 'Music Instrument', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img5.png', 'Music Instrument', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img6.png', 'Music Instrument', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img7.png', 'Music Instrument', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img8.png', 'Music Instrument', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img9.png', 'Music Instrument', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img10.png', 'Music Instrument', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('music/img11.png', 'Music Instrument', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
List<Products> party = [
  Products('party/img.png', 'Party Area', 'Arlington, Tx', '\$40 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img1.png', 'Party Area', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img2.png', 'Party Area', 'Arlington, Tx', '\$60 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img3.png', 'Party Area', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img4.png', 'Party Area', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img5.png', 'Party Area', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img6.png', 'Party Area', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img7.png', 'Party Area', 'Arlington, Tx', '\$30 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img8.png', 'Party Area', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img9.png', 'Party Area', 'Arlington, Tx', '\$100 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img10.png', 'Party Area', 'Arlington, Tx', '\$10 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.'),
  Products('party/img11.png', 'Party Area', 'Arlington, Tx', '\$20 /day',
      'Meco\'s Tabletop Electric Grill has 200 sq. inches of usable cooking surface that lets you prepare a meal for the whole family at once. It features an adjustable and removable thermostat control that allows you to control the temperature. This grill has a reflector pan that ensures the cooking surface is heated properly.')
];
