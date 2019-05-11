float [] values;
int i = 0 ;
int j = 0;
void setup()
{
  size(700 , 500);
  values = new float[width];
  for(int i = 0 ; i < values.length ; i++)
  {
    values[i] = random(height);
  }
}

void draw()
{
  background(0);
  for(int i = 0 ; i < values.length ; i++)
  {
    stroke(255);
    line(i , height , i , height - values[i] );
  }
  if ( i < values.length - 1 )
    {

    for(j = i + 1 ; j < values.length ; j++)
    {
      if( values[i] > values[j])
      {
       swap(values , i , j);
      }
      
    }
    //swap(values , values.length - i - 1 , maxin);
  }
  else
  {
  println("Finished");
  noLoop();
  }
  i++;
}


void swap( float [] arr , int y , int z)
{
  float temp ;
  temp = arr[y] ;
  arr[y] = arr[z];
  arr[z] = temp;
}
