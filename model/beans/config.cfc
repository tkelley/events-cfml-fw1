component {
	
	function init(){
		// Set configuration parameters.
		variables.data = {
			eventsFile = expandPath("/data/events.json")
		};

		return this;
	}

	function get(key){
		return variables.data[key] ?: "";
	}

	function toStruct(){
		return duplicate(variables.data);
	}

}