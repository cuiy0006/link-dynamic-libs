int max(int a, int b, int c)
{
   int max = ( a < b ) ? b : a;
   return ( ( max < c ) ? c : max );
}