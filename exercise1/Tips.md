## Aufgabe 1
* figure(1), figure(2)...
* x = -10:01:10;
* y = x.^5 - 5 * x.^4 +...
* y-diff 5*x.^4 - ...
* y-int = 1/6 * x.^6 - ....
* plot(x, y, x, y-diff, x, y-int)
* legend('?', '?', '?')
* grid
* xlim([?, ?])
* ylim(['?','?'])

## Aufgabe 2

* function(y, ydiff, yint) = Serie1_Aufg2(a, xmin, xmax)

* % a: array containing the coefficients in decreasing order

* % Example: [y1, y2, y3] = Serie1_Aufg2([2 1 3], -5, 5) (func call as comment)

* % check for errors:

  ```
  if size(a, 1) ~= 1 && size(a, 2) ~= 1
  	error ('Error: a must be a row or column vector')	
  end
  ```

* % define x
  step = abs(xmin-xmax)/1000;
  x = xmin:step:xmax;

* order of polynomial
  n = length(a) - 1

* ```
  y =0;
  ydiff = 0;
  yint = 0;
  for i =0: n,
  	y = y + a (i+1) * x.^(n-i);
  	ydiff = ydiff + ?
  	yint = yint + ?
  ```

  i = 0: y = 0 + a(1) * x.^n = anx^n