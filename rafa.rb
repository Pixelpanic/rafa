#RAFA - Ruby the Apple Farmer Alert - Works on AWS
#Contributer : Pixoria Wong @pixoria
#Ruby 1.9.3 RAFA-a0.3

#setup HTTP net session
require 'net/http'
require 'net/https'
require 'fileutils' 

print " Start contacting dest server... \n"


#Contact SMT Server by URI - HTML to String
	smt = URI.parse("https://'
	")

	print " Your URI request is : " , smt
	print "\n" , "Trying SSL Connection..."
	
#Due to some server is using HTTPS connect, we have to enable ruby to use port 443	
	

	http = Net::HTTP.new(smt.host, smt.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	
#Response the fucking fake Cookies
	
	print "\n", "SSL Connection est." , "\n"
		
	
#Start request server provide HTML and covert to string
  
	req = Net::HTTP::Get.new(smt.request_uri)
	res = http.request(req)
	
	smtstr = res.body

#Print HTML for debug purpose only
	print " 搞掂. 黎XX正仆街! \n \n"
	print smtstr
	print "\n \n"

#count String length
	smtstrlen = smtstr.length

#Print length for debug purpose
	print "The file length is ", smtstrlen
	print "\n"
