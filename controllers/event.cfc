component accessors="true" {
	property eventsService;
	
	function init(fw){
		variables.fw = fw;
		return this;
	}

	function default(rc){
		rc.events = eventsService.asArray();
	}

	function detail(rc){
		if(!structKeyExists(rc, "id")){
			variables.fw.redirect(".listing");
		}
		
		rc.event = eventsService.lookupById(rc.id);
	}

}