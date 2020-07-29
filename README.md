I got a task to create an automation that verifies payment methods in out checkout page,
we have different   payment methods supported in our 2 processors,
and different payment methods in mobile/desktop and different payment methods per each country!

in order to do that iv created hash for each processor, that will insure this test will be generic,
and easy to change when we will change our current supported method
the hash is separated to country:processor:device: method
 
 in the main func,
 iv checked which prossesor im on, and which device 
     
 caculated the expected number of payment methods using size of the hash in the right prossesor, country and device
   
 counting and compering the actual payment methods in the page using lable count
 
 and verify expected payment methods exists using run of the relevent hash with relevent country and device 
 and checking each method is exists in the page

