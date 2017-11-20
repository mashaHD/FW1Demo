component extends="framework1.one" {

	this.name = "fwsite2";
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days - (10, 0, 0, 0)

	this.coreDir = GetDirectoryFromPath(GetDirectoryFromPath(GetCurrentTemplatePath()).ReplaceFirst( "[\\\/]{1}$", "" )) & "_fw1_core";

	this.mappings = {
      "/fw1_core" = this.coreDir
    };

	
	variables.framework = {
		// the name of the URL variable:
		action = 'do',
		// default section name:
		defaultSection = 'main',
		// default item name:
		defaultItem = 'default',
		// the URL variable to reload the controller/service cache:
		reload = 'reload',
		// the value of the reload variable that authorizes the reload:
		password = 'hd',
		// debugging flag to force reload of cache on each request:
		reloadApplicationOnEveryRequest = true,
		// whether to force generation of SES URLs:
		generateSES = true,
		// whether to omit /index.cfm in SES URLs:
		SESOmitIndex = true,
		// location used to find layouts / views:
		//base = ... relative path from Application.cfc to application files ...
		// either CGI.SCRIPT_NAME or a specified base URL path:
		//baseURL = CGI.SCRIPT_NAME,
		// location used to find controllers / services:
		//cfcbase = essentially base with / replaced by .
		// set this to true to cache the results of fileExists for performance:
		cacheFileExists = false,
        // change this if you want a different dependency injection engine:
        diEngine = 'di1',
        // change this if you want different locations to be scanned by the D/I engine:
        diLocations = 'model,controllers',
        // optional configuration for your dependency injection engine:
        diConfig = { },
        // routes (for fancier SES URLs) - see the documentation for details:
        routes = [ ],
        routesCaseSensitive = true,
        trace = false
	};

	
	function setupRequest() {

		// use setupRequest to do initialization per request
		request.context.startTime = getTickCount();

	}

	
	function customizeViewOrLayoutPath(pathInfo, type, fullPath) {
      
      	var basePath = '';
      	var path = '';

        if (!fileExists(ExpandPath(arguments.fullPath))) {

          	local.path = "/fw1_core" & arguments.fullPath;
        
        } else {

            local.path = arguments.fullPath;
                   
        }         

        return local.path;
      
    }

}
