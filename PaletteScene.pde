/*
  Copyright 2015 Antonio Jesús Sánchez Padial
  
  See License info at the end of the file.
*/

class PaletteScene extends Scene {
  
  float sizeX, sizeY;
  boolean active;
  
  PaletteScene(TagAttack app, LuminancePalette palette) {
    super(app, palette);
  }
  
  void start() {
    sizeX = width / 17;
    sizeY = height / 5;
    stroke(90);
    active = true;
  }
  
  void stop() {
    active = false;
  }
  
  public Scene update() {
    if (active) {
      return this;
    }
    else {      
      return otherScene;
    }
  }
  
  void draw() {
    translate(sizeX * .5, sizeY * .5);
    for (int l = 0; l < 4; l++) {
      for (int c = 0; c < 16; c++) {
        fill(palette.createColor(c, l).getColor());
        rect(c * sizeX, l* sizeY, sizeX, sizeY);
      }
    }
  }
  
  public void keyReleased() {
    this.stop();
  }
}

/*
  This file is part of Tag Attack.
  
  Tag Attack is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Tag Attack is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/