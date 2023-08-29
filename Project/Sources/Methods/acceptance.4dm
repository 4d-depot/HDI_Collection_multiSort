//%attributes = {}

var $continent; $country; $city : Collection
var $Rescontinent; $Rescountry; $Rescity : Collection

//mark: -sync

// Test 1
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([$country; $city])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "Germany"; "Germany"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Paris"; "Lyon"; "Berlin"; "Eching"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 2
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort(Formula:C1597($1.value>$1.value2); [$country; $city])

$Rescontinent:=["Europe"; "Europe"; "Europe"; "Europe"; "Europe"; "America"; "Africa"]
$Rescountry:=["France"; "France"; "Germany"; "Germany"; "France"; "US"; "Morocco"]
$Rescity:=["Paris"; "Lyon"; "Berlin"; "Eching"; "Bordeaux"; "San Diego"; "Rabat"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 3
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort(Formula:C1597($1.value<$1.value2); [$country; $city])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "Germany"; "Germany"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Paris"; "Lyon"; "Berlin"; "Eching"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))



//mark: -objet

// Test 1.1 - asc, asc, synchro
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck ascending:K85:9}; $city])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "France"; "Germany"; "Germany"]
$Rescity:=["Rabat"; "San Diego"; "Paris"; "Lyon"; "Bordeaux"; "Berlin"; "Eching"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 1.2 - asc, desc, synchro
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck descending:K85:8}; $city])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "Germany"; "Germany"; "France"; "France"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Berlin"; "Eching"; "Paris"; "Lyon"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 2.1 - asc, synchro, asc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([$country; {collection: $city; order: ck ascending:K85:9}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "Germany"; "Germany"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Lyon"; "Paris"; "Berlin"; "Eching"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 2.2 - asc, synchro, desc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([$country; {collection: $city; order: ck descending:K85:8}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "Germany"; "Germany"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Paris"; "Lyon"; "Eching"; "Berlin"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 3.1 - asc, asc, asc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck ascending:K85:9}; {collection: $city; order: ck ascending:K85:9}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "France"; "Germany"; "Germany"]
$Rescity:=["Rabat"; "San Diego"; "Bordeaux"; "Lyon"; "Paris"; "Berlin"; "Eching"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 3.2 - asc, asc, desc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck ascending:K85:9}; {collection: $city; order: ck descending:K85:8}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "France"; "France"; "France"; "Germany"; "Germany"]
$Rescity:=["Rabat"; "San Diego"; "Paris"; "Lyon"; "Bordeaux"; "Eching"; "Berlin"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 3.3 - asc, desc, asc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck descending:K85:8}; {collection: $city; order: ck ascending:K85:9}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "Germany"; "Germany"; "France"; "France"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Berlin"; "Eching"; "Bordeaux"; "Lyon"; "Paris"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

// Test 3.4 - asc, desc, desc
$continent:=["Europe"; "Europe"; "Africa"; "Europe"; "America"; "Europe"; "Europe"]
$country:=["France"; "France"; "Morocco"; "Germany"; "US"; "Germany"; "France"]
$city:=["Paris"; "Lyon"; "Rabat"; "Berlin"; "San Diego"; "Eching"; "Bordeaux"]

$continent.multiSort([{collection: $country; order: ck descending:K85:8}; {collection: $city; order: ck descending:K85:8}])

$Rescontinent:=["Africa"; "America"; "Europe"; "Europe"; "Europe"; "Europe"; "Europe"]
$Rescountry:=["Morocco"; "US"; "Germany"; "Germany"; "France"; "France"; "France"]
$Rescity:=["Rabat"; "San Diego"; "Eching"; "Berlin"; "Paris"; "Lyon"; "Bordeaux"]
ASSERT:C1129($continent.equal($Rescontinent))
ASSERT:C1129($country.equal($Rescountry))
ASSERT:C1129($city.equal($Rescity))

//mark: -mix type
var $myBlob : 4D:C1709.Blob
CONVERT FROM TEXT:C1011("Hello, World!"; "UTF-8"; $myBlob)

var $col; $col2; $col3; $col4 : Collection
var $Rescol; $Rescol2 : Collection
$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col2:=[$myBlob; ["a"; "z"]; "a"; 1; {t: "a"; u: "z"}; Time:C179(10000); {c: "a"; v: "z"}; Null:C1517; Current date:C33; False:C215]
$col3:=[{fruit: "Orange"; number: 2}; {fruit: "Apple"; number: 2}; {fruit: "Grape"; number: 4}; {fruit: "Pear"; number: 1}; {fruit: "Banana"; number: 6}; {fruit: "Fig"; number: 9}; {fruit: "Blackberry"; number: 12}; {fruit: "Passion fruit"; number: 0}; {fruit: "Strawberry"; number: 3}; {fruit: "Ananas"; number: 5}]


// Test 1 - mix type
$col:=[$myBlob; ["a"; "z"]; "a"; 1; {t: "a"; u: "z"}; Time:C179(10000); {c: "a"; v: "z"}; Null:C1517; Current date:C33; False:C215]
$Rescol:=[Null:C1517; False:C215; "a"; 1; Time:C179(10000); $myBlob; {t: "a"; u: "z"}; {c: "a"; v: "z"}; ["a"; "z"]; Current date:C33]
$col.multiSort()
ASSERT:C1129($col.equal($Rescol))

// Test 2 - callback
$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$Rescol:=["Strawberry"; "Pear"; "Passion fruit"; "Orange"; "Grape"; "Fig"; "Blackberry"; "Banana"; "Apple"; "Ananas"]
$col.multiSort(Formula:C1597(String:C10($1.value)>String:C10($1.value2)))
ASSERT:C1129($col.equal($Rescol))

// Test 2 - callback
$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$Rescol:=["Ananas"; "Apple"; "Banana"; "Blackberry"; "Fig"; "Grape"; "Orange"; "Passion fruit"; "Pear"; "Strawberry"]
$col.multiSort(Formula:C1597(String:C10($1.value)<String:C10($1.value2)))
ASSERT:C1129($col.equal($Rescol))

// Test 3 - callback + attribut
$col:=[{fruit: "Orange"; number: 2}; {fruit: "Apple"; number: 2}; {fruit: "Grape"; number: 4}; {fruit: "Pear"; number: 1}; {fruit: "Banana"; number: 6}; {fruit: "Fig"; number: 9}; {fruit: "Blackberry"; number: 12}; {fruit: "Passion fruit"; number: 0}; {fruit: "Strawberry"; number: 3}; {fruit: "Ananas"; number: 5}]
$Rescol:=[{fruit: "Orange"; number: 2}; {fruit: "Apple"; number: 2}; {fruit: "Grape"; number: 4}; {fruit: "Pear"; number: 1}; {fruit: "Banana"; number: 6}; {fruit: "Fig"; number: 9}; {fruit: "Blackberry"; number: 12}; {fruit: "Passion fruit"; number: 0}; {fruit: "Strawberry"; number: 3}; {fruit: "Ananas"; number: 5}]
$Rescol.sort(Formula:C1597(Length:C16(String:C10($1.value.fruit))>Length:C16(String:C10($1.value2.fruit))))
$col.multiSort(Formula:C1597(Length:C16(String:C10($1.value.fruit))>Length:C16(String:C10($1.value2.fruit))))
ASSERT:C1129($col.equal($Rescol))

// Test 4 - mix + synchro
$col:=[$myBlob; ["a"; "z"]; "a"; 1; {t: "a"; u: "z"}; Time:C179(10000); {c: "a"; v: "z"}; Null:C1517; Current date:C33; False:C215]
$Rescol:=[Null:C1517; False:C215; "a"; 1; Time:C179(10000); $myBlob; {t: "a"; u: "z"}; {c: "a"; v: "z"}; ["a"; "z"]; Current date:C33]
$col2:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$Rescol2:=["Passion fruit"; "Ananas"; "Grape"; "Pear"; "Fig"; "Orange"; "Banana"; "Blackberry"; "Apple"; "Strawberry"]

$col.multiSort([$col2])
ASSERT:C1129($col.equal($Rescol))
ASSERT:C1129($col2.equal($Rescol2))



// mark: -erreurLength

//$col:=["Orange"; "Apple"; "Grape"]
//$col2:=["Orange"; "Apple"]
//$col.multiSort([$col2])

//SET DATABASE LOCALIZATION("fr")
//$col:=["Orange"; "Apple"; "Grape"]
//$col2:=["Orange"; "Apple"]
//$col.multiSort([$col2])
//SET DATABASE LOCALIZATION("en")

//mark: -diffSort

$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col2:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col3:=$col.sort(True:C214)
$col4:=$col2.multiSort(True:C214)
ASSERT:C1129($col.equal($col2))
ASSERT:C1129($col3.equal($col4))

$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col2:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col3:=$col.sort("a")
$col4:=$col2.multiSort("a")
ASSERT:C1129($col.equal($col2))
ASSERT:C1129($col3.equal($col4))

$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col2:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col3:=$col.sort({a: "a"; b: 1})
$col4:=$col2.multiSort({a: "a"; b: 1})
ASSERT:C1129($col.equal($col2))
ASSERT:C1129($col3.equal($col4))

$col:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col2:=["Orange"; "Apple"; "Grape"; "Pear"; "Banana"; "Fig"; "Blackberry"; "Passion fruit"; "Strawberry"; "Ananas"]
$col3:=$col.sort(Formula:C1597(Length:C16(String:C10($1.value))>Length:C16(String:C10(1.value2))))
$col4:=$col2.multiSort(Formula:C1597(Length:C16(String:C10($1.value))>Length:C16(String:C10(1.value2))))
ASSERT:C1129($col.equal($col2))
ASSERT:C1129($col3.equal($col4))




