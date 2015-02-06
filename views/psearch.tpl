<!DOCTYPE html>
<html>
<head>
	<title>Alveo Query Engine</title>
	<link rel="stylesheet" type="text/css" href="/styles/style.css">
</head>

<body>

<h1>Alveo Query Engine</h1>

<p>First, search by participants. You can then filter the items relating to these participants.</p>

<form action="/presults" method="POST">

	<table>
	 <tr>
	  <td>
		Gender: <select name="gender">
			<option value = "">Any</option>
			<option value = "male">Male</option>
			<option value = "female">Female</option>
		</select>
	  </td>
	  <td>		
		Age: <input type="text" name="age">
	  </td>
	  <td>
		City: <select name="city" >
		    <option value = "">Any</option>
			% for city in cities:
			<option value="{{city}}">{{city}}</option>
			% end
		</select>
	  </td>
	 </tr>
	 <tr>
	  <td>
		Birth Country: <select name="bcountry">
			<option value = "">Any</option>
			%for country in bCountries:
			<option value="{{country}}">{{country}}</option>
			%end
	  </td>
	  <td>
		Birth State: <input type="text" name="bstate">
	  </td>
	  <td>
		Birth Town <input type="text" name="btown">
	  </td>
	 </tr>
	 <tr>
	  <td>
		First Language: <select name="flang">
			<option value = "">Any</option>
			% for i in range(0, len(fLangInt)):
			<option value="{{fLangInt[i]}}">{{fLangDisp[i]}}</option>
			% end
	  </td>
	  <td>
	  Other Languages: <input type="text" name="olangs">
	 </tr>
	 <tr>
	  <td>
	  	Professional Category: <select name="profcat">
	  		<option value="">Any</option>
	  		%for prof in profCat:
	  		<option value="{{prof}}">{{prof}}</option>
	  		%end  
	  </td>
	  <td>
		Highest Qualification: <select name="highqual">
			<option value="">Any</option>
			%for qual in highQual:
			<option value="{{qual}}">{{qual}}</option>
			%end
		</select>
	  </td>
	  <td>
		Socio-economic Status: <select name="ses">
			<option value="">Any</option>
			<option value="professional">Professional</option>
			<option value="Non professional">Non-professional</option>
			</select>
	  </td>
	 </tr>
	 <tr>
	  <td>
		Cultural Heritage: <select name="heritage">
				<option value = "">Any</option>
				%for place in herit:
				<option value="{{place}}">{{place}}</option>
				% end
			</select>
	  </td>
	 </tr>	 
	 <tr>
	  <td>
    <input value="Search" type="submit">
	  </td>
	 </tr>
	</table>
</form>

<h2>Notes:</h2>

<p>Any fields left blank will not be used to filter results.</p>

<table>
	<tr>
	 <td><b>Age:</b></td>
	 <td>Enter a single number to search for a specific age. Enter two numbers separated by a hyphen (e.g, "18-50") to search for a range of ages.</td>
	</tr>
	<tr>
	 <td><b>Other Languages:</b></td>
	 <td>Example usage:<ul><li>Entering "Japanese" (without quotes) will return all participants whose other languages include Japanese.</li>
						   <li>Entering "Japanese" (with quotes) will return participants whose ONLY other language is Japanese.</li>
						   <li>Entering "Japanese, Hindi" (without quotes) will return participants whose other languages include Japanese or Hindi or both.</li></ul></td>
	</tr>					   
	<tr>
	 <td><b>Professional Category:</b></td>
	 <td>Searching for "clerical and service" or "intermediate clerical and service" will cause a server error. All other values work. No idea why this is happening, fixing it is on the to do list.</td>
	</tr>
	<tr>
	 <td><b>Socio-economic Status:</b></td>
	 <td>Only about half of the participants have data for this field. If a choice is specified, participants with unknown socio-economic status will be omitted from results.</td>
	</tr>
	<tr>
	 <td><b>First Language:</b></td>
	 <td>Not displayed in results, but does search correctly.</td>
	</tr>
</table>
	 
</body>

</html>