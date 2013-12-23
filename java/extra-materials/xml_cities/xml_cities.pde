class Vec2f {
  float x, y;
  Vec2f(float x, float y) {
    this.x = x;
    this.y = y;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }
}

XML xml;
ArrayList<String> citiesArray = new ArrayList<String>();
ArrayList<Vec2f> coordinatesArray = new ArrayList<Vec2f>();
ArrayList<Integer> populationArray = new ArrayList<Integer>();

void setup() {
  xml = loadXML("cities.xml");
  XML[] children = xml.getChildren("city");

  for (int i=0;i<children.length;i++) {
    //get name
    XML nameElement = children[i].getChild("name");
    String name = nameElement.getContent();
    citiesArray.add(new String(name));

    //get coordinates
    XML coordinateElement = children[i].getChild("coordinates");
    float north = coordinateElement.getFloat("n");
    float east = coordinateElement.getFloat("e");
    coordinatesArray.add(new Vec2f(north, east));

    //population
    XML populationElement = children[i].getChild("pop");
    int population = populationElement.getIntContent();
    populationArray.add(new Integer(population));
  }

  //let's test the content of the Array lists
  for (int i=0;i<children.length;i++) {
    println(coordinatesArray.get(i).getX()+" "+coordinatesArray.get(i).getY());
  }
}

