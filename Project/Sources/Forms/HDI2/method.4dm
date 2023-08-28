Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		InitInfo
		
		Form:C1466.city:=["Paris"; "Lyon"; "Rabat"; "Eching"; "San Diego"]
		Form:C1466.country:=["France"; "France"; "Morocco"; "Germany"; "US"]
		Form:C1466.continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"]
		
		Form:C1466.name:=[{id: 1; firstname: "John"; lastname: "Smith"}; {id: 2; firstname: "Alain"; lastname: "Martin"}; {id: 3; firstname: "Jane"; lastname: "Doe"}; {id: 4; firstname: "John"; lastname: "Doe"}]
		Form:C1466.address:=[{id: 1; city: "Paris"; country: "France"}; {id: 2; city: "Lyon"; country: "France"}; {id: 3; city: "Eching"; country: "Germany"}; {id: 4; city: "Berlin"; country: "Germany"}]
		
		nType:=1
		nType2:=1
		nTrace:=1
		
End case 

