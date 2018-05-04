({
	'render' : function(component) {
		this.superRender();
		var element = document.createElement('div');
		component.mainElement = element;
		return element;
	}
	// eslint-disable-next-line semi
})