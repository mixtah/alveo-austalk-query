<!DOCTYPE html>
<html>
<head>
	% include('bshead.tpl')
</head>

<body>

<div class="navi">
	% include('nav.tpl', apiKey=apiKey, title="ISearch",loggedin=True)
</div>

<div class="content">

<form action="/itemresults" method="POST" style="width:98%;margin:auto;">
	<br><p style="font: 15px arial, sans-serif;">Here you can search for your desired participants. Click on each of the headings to expand all the available criteria.<br>When you are done click submit and you'll be provided with a list of participants fulfilling your criteria.</p>
	<button type="submit" style="float:right;" class="btn btn-default">Submit</button><br><br>
	<div class="panel-group" id="accordion" >
		<div class="panel panel-default">
			<div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="" style="cursor:auto;">
				<h4 class="panel-title">Item Search</h4>
			</div>
			<div id="gitem" class="panel-collapse collapse in">
				<div class="panel-body">
					<table>
						<tr>
							<td class="left">
								<label for="prompt"><b>Prompt:</b></label>
							</td>
							<td class="mid">
								<div class="form-group">
									<input type="text" class="form-control" name="prompt" id="prompt" placeholder="animal">
								</div>
							</td>
							<td class="right">
								<p>You can search for individual words by entering them in this search box. You can also use SPARQL's regular expression syntax. Some examples, '.' is a wildcard character, '*' matches 0-many of the previous expression. Partial searches can also work using "^" and/or "$" at the beginning and the end respectively. Searches are not case-sensitive. More information is below.</p>
							</td>
						</tr>
						<tr>
							<td class="left">
								<label for="anno"><b>Annotated Items Only:</b></label>
							</td>
							<td class="mid">
								<div class="form-group">
									<div class="btn-group" data-toggle="buttons" id="anno" name="anno">
										<label class="btn btn-custom">
											<input type="radio" value = "required" id="anno" name="anno" autocomplete="off">True
										</label>
										<label class="btn btn-custom active">
											<input type="radio" value = "" id="anno" name="anno" autocomplete="off" checked>False
										</label>
									</div>
								</div>
							</td>
							<td class="right">
								<p>Select true to show only items with annotations</p>
							</td>
						</tr>
						<tr>
							<td class="left">
								<label for="compname"><b>Component:</b></label>
							</td>
							<td class="mid">
								<div class="form-group">
									<input type="text" class="form-control" name="compname" id="compname" placeholder="yes-no-opening-1">
								</div>
							</td>
							<td class="right">
								<p></p>
							</td>
						</tr>
						<tr>
							<td class="left">
								<label for="comptype"><b>Component Type:</b></label>
							</td>
							<td class="mid">
								<div class="form-group">
									<select class="form-control" name="comptype">
										<option value="">Any</option>
										<option value="sentences">Sentences</option>
										<option value="yes-no">Yes-No</option>
										<option value="words">Words</option>
										<option value="digits">Digits</option>
										<option value="interview">Interview</option>
										<option value="maptask">Maptask</option>
										<option value="calibration">Calibration</option>
										<option value="story">Story</option>
										<option value="conversation">Conversation</option>
									</select>
								</div>
							</td>
							<td class="right">
								<p></p>
							</td>
						</tr>
						<tr>
							<td class="left">
								<label for="wlist"><b>Word List:</b></label>
							</td>
							<td class="mid">
								<div class="form-group">
									<select class="form-control" name="wlist">
										<option value="">None</option>
										<option value="hvdwords">hVd Words</option>
										<option value="hvdmono">hVd Monophthongs</option>
										<option value="hvddip">hVd Diphthongs</option>
									</select>
								</div>
							</td>
							<td class="right">
								<p></p>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div> 
	<button type="submit" style="float:right;" class="btn btn-default">Submit</button>
</form>


<h2>Notes:</h2>

<p>Any fields left blank will not be used to filter results.</p>

<table>
	<tr>
	 <td><b>Prompt/Component:</b></td>
	 <td>Example usage:<ul><li>Entering "hid" (without quotes) will return the prompts "hid" and "hide"</li>
						   <li>Entering "hid" (with quotes) will return ONLY the prompt "hid"</li>
						   <li>Entering "hid, hod" (without quotes) will return the prompts hode, hod, hid, hide, whod</li></ul>
		<p>You can also use SPARQL's regular expression syntax ('.' is a wildcard character, '*' matches 0-many of the previous expression, etc.). Searches are not case-sensitive.</p></td>
	</tr>
	<tr>
	<td><b>Component/Component Type:</b></td>
	<td>Using the Component field you can search for a specific component if desired (i.e, "yes-no-opening-2".<br>
	The Component Type drop-down menu will select by a broader category of components (all "yes-no" type components.</td>
	</tr>
</div>
	% include('bsfoot.tpl')
</body>

</html>
