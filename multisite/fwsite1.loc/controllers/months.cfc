component extends="fw1_core.controllers.months" accessors=true  {

	public void function default(struct rc) {

		rc.monthsTravelInfo = {

			'January' = {'country' = 'Thailand'},
			'February' = {'country' = 'Columbia'},
			'March' = {'country' = 'Galapagos Islands'},
			'April' = {'country' = 'Morocco'},
			'May' = {'country' = 'Peru'},
			'June' = {'country' = 'Iceland'},
			'July' = {'country' = 'French Polynesia'},
			'August' = {'country' = 'Indonesia'},
			'September' = {'country' = 'Alaska'},
			'October' = {'country' = 'China'},
			'November' = {'country' = 'Vietnam'},
			'December' = {'country' = 'Germany'}

		};

		if (structKeyExists(rc,"month") and len(rc.month)){
			rc.country = rc.monthsTravelInfo[rc.month].country;
		}

	}

}
