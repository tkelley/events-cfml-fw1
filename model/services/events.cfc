component accessors="true" {
	
	function init(){
		variables.config = new model.beans.config();
		variables.eventData = readEventsFromFile();
		return this;
	}

	function asArray(){
		return duplicate(variables.eventData);
	}

	function lookupById(id){
		var events = variables.eventData.filter(function(v){
			return v.id == id;
		});

		return events[1] ?: {};
	}

	private function readEventsFromFile(){
		//var data = fileRead("c:\web\events\data\events.json");
		var data = fileRead(variables.config.get("eventsFile"));

		return deserializeJSON(data);
	}

}