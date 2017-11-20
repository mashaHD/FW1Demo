component {

	function before(rc) {
		intercept("formatter","logging");
	}
	
	public string function longdate( any when ) {
		return dateFormat( when, 'long' ) & " at " & timeFormat( when, 'long' );
	}
	
}
