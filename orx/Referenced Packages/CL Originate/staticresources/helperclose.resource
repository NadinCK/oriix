function closeIframe(id, name){
	var p = window.parent;
	if (id!=null){
		window.top.location.href='/' + id;
	}
	while (p.closeModalWindow == null && p != top) {
        p = p.parent;
        };
        p.closeModalWindow();
	p.topTabRerender(name);
}