component extends="framework.one" {

	variables.framework = {
		generateSES = true,
		reloadApplicationOnEveryRequest = true,
		routes = [
			{"/event/:id" = "/event/default/id/:id"}
		]
	}

}
