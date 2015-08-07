Car Lease Calculator App
========================================================
author: barqy
date: 2015/8/6

Sleek, Simple, Useful

Planning to lease a car? Here's an app!
========================================================

 
- Calculate your monthly lease payment
  + Trade-in old car
  + Bring cash down payment
  + Enter residual value
- All in one simple, sleek screen


***

![main][1]

[1]: fig/main.gif "Main Screen"

Example
========================================================
left: 70% 

- You want to lease a car for 5 years
- It costs $ 20 000
- After 5 years, you may keep the car if you pay $ 8 000 more 
- You bring $ 2 000 cash to the table now
- ... and trade-in your old car, which is worth $ 5 000
- The annual interest rate on a lease is 4 %

***

![inputs][2]

[2]: fig/inputs.gif "Contract Details"

.. and your monthly lease payment is...
========================================================
The calculated monthly lease payment in dollars is

```r
pmt(r/100,t,p-down-trade,res)
```

```
[1] 221.01
```

as you can see on the right panel of the app screen:

![output][3]

[3]: fig/output.gif "Lease Payment"

Documentation is on the same page
========================================================

- It is very easy to use, and its documentation is on the same page!

***

![docs][4]

[4]: fig/docs.gif "Docs"
