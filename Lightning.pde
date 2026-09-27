int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;

void setup()
{
  size(500, 500);
  strokeWeight(3);
  background(0);
}

void draw()
{
  stroke(
    (int)(Math.random() * 256),
    (int)(Math.random() * 256),
    (int)(Math.random() * 256)
  );

  while (endX < width)
  {
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 19) - 9;

    line(startX, startY, endX, endY);

    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  background(0);

  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}
