I got a task to create an automation that verifies payment methods in out checkout page,
we have different   payment methods supported in our 2 processors,
and different payment methods in mobile/desktop and different payment methods per each country!

in order to do that iv created hash for each processor, that will insure this test will be generic,
and easy to change when we will change our current supported method
the hash is separated to country:processor:device: method

 BLS_PAYMENT_METHODS = {'usa' => {'mobile' => ['cc', 'bls_paypal'], 'desktop' => ['cc', 'bls_paypal', 'moneybookers', 'wire', 'banktransfer']}}
 ADYEN_PAYMENT_METHODS = {'usa' => {'mobile' => ['cc', 'adyen_paypal'], 'desktop' => ['cc', 'adyen_paypal']}}
 
 in the main func,
 iv checked which prossesor im on, and which device 
     processor = self.is_processor_adyen? ? 'ADYEN' : 'BLS'
     device = (MOBILE_DEVICES.include? DEVICE) ? 'mobile' : 'desktop'
     
 caculated the expected number of payment methods using size of the hash in the right prossesor, country and device
    expected_number_of_payment_methods = (eval("#{processor}_PAYMENT_METHODS")[country][device]).size
    
 counting and compering the actual payment methods in the page using lable count
    actual_number_of_payment_methods = eval("self.#{device}_payment_methods_container_element.labels.count")
    assert_equal expected_number_of_payment_methods, actual_number_of_payment_methods, "expected number payment methods #{expected_number_of_payment_methods} actual number of payment methods: #{actual_number_of_payment_methods}"
 
 and verify expected payment methods exists using run of the relevent hash with relevent country and device 
 and checking each method is exists in the page
    eval("#{processor}_PAYMENT_METHODS")[country][device].each do |method|
    assert(eval("self.payment_method_#{method}_element.check_exists"), "Payment method #{method} is missing")
