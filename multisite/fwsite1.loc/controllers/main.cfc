component extends="fw1_core.controllers.main" accessors=true  {

	public void function default( struct rc ) {
		rc.month = monthAsString(datePart("m",Now()));
	}

}
