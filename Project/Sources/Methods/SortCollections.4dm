//%attributes = {}
#DECLARE($type : Integer)

If (nTrace=1)
	TRACE:C157
End if 

Case of 
		
	: ($type=1)
		Form:C1466.continent.multiSort([Form:C1466.country; Form:C1466.city])
		
	: ($type=2)
		Form:C1466.continent.multiSort([Form:C1466.country; {collection: Form:C1466.city; order: ck ascending:K85:9}])
		
	: ($type=3)
		Form:C1466.continent.multiSort([{collection: Form:C1466.country; order: ck ascending:K85:9}; {collection: Form:C1466.city; order: ck ascending:K85:9}])
		
	: ($type=4)
		Form:C1466.continent.multiSort(Formula:C1597($1.value>$1.value2); [Form:C1466.country; Form:C1466.city])
		
	: ($type=5)
		Form:C1466.name.multiSort(Formula:C1597($1.value.firstname<$1.value2.firstname); [Form:C1466.address])
		
	: ($type=6)
		Form:C1466.name.multiSort(Formula:C1597($1.value.lastname>$1.value2.lastname); [Form:C1466.address])
		
	: ($type=-1)
		Form:C1466.city:=["Paris"; "Lyon"; "Rabat"; "Eching"; "San Diego"]
		Form:C1466.country:=["France"; "France"; "Morocco"; "Germany"; "US"]
		Form:C1466.continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"]
		
	: ($type=-2)
		Form:C1466.name:=[{firstname: "John"; lastname: "Smith"}; {firstname: "Alain"; lastname: "Martin"}; {firstname: "Jane"; lastname: "Doe"}; {firstname: "John"; lastname: "Doe"}]
		Form:C1466.address:=[{city: "Paris"; country: "France"}; {city: "Lyon"; country: "France"}; {city: "Eching"; country: "Germany"}; {city: "Berlin"; country: "Germany"}]
		
		
End case 
