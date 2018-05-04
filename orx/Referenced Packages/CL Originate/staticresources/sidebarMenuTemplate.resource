j$ = jquery.noconflict();

function addMenuItem(classAhref,imgsrc,nameAhref){
    return '<a href = "#" onclick = "return false" class="menuButtonMenuLink mainMenu ' + classAhref + '" target="_top"><img src="' + imgsrc + '" class="mruIcon"/>' + nameAhref + '<img src="/img/arrowRight.gif" id = "arrowID" style = "position:absolute;left:175px;margin-top:4px;" /></a>';
}

function addMenuItemWithLink(menuURL,classAhref,imgsrc,nameAhref){
	if (imgsrc == ''){
    return '<a href = "' + menuURL + '" class="menuButtonMenuLink mainMenu ' + classAhref + '" target="_top">' + nameAhref;
	}
	else{
	return '<a href = "' + menuURL + '" class="menuButtonMenuLink mainMenu ' + classAhref + '" target="_top"><img src="' + imgsrc + '" class="mruIcon"/>' + nameAhref;
	}
}

function addSubMenuDiv(classDiv,top){
    return '<div class="menuButtonMenu subMenu ' + classDiv + '" id="createNewMenu" style="display :none; width: 196px;left:195px;top:' + top + ';"></div>';
}

function addSubMenuItem(ahrefLink,classSubAhref,nameAhref,onclick){
	if (onclick == null)
	{
	return '<a href="' + ahrefLink + '" class="menuButtonMenuLink ' + classSubAhref + '" target="_top">' + nameAhref + '</a>';
	}
	else
	{
	return '<a href="' + ahrefLink + '" onclick = "' + onclick + '" class="menuButtonMenuLink ' + classSubAhref + '" target="_top">' + nameAhref + '</a>';
	}
}

function addModalSubMenuItem(classSubAhref,nameAhref,onclick){
	
	
	return '<a " onclick = "' + onclick + '" class="menuButtonMenuLink ' + classSubAhref + '" target="_top">' + nameAhref + '</a>';
	
}

function addMenuHeader(menuName,height){
return '<div class="createNewModule sidebarModule navMenu" ><div class="sidebarModuleBody sidebarModuleBodyNoHeader" style="height:' + height + ';"><div class="menuButton" id="createNew" style = "z-index:200"><div class="menuButtonButton" id="createNewButton"><span class="menuButtonLabel" id="createNewLabel" tabindex="0" style="">' + menuName + '</span></div><div class="menuButtonMenu quickloanmenu" id="createNewMenu" style="display: block; width: 196px;"></div></div></div></div>'
}

function addMultipleSubMenuItem(ahrefLink,classSubAhref,nameAhref){
	var allitems = "";
		for(var i=0;i<ahrefLink.length;i++) {
			allitems += addSubMenuItem(ahrefLink[i],classSubAhref[i],nameAhref[i]);
		}

	return allitems;
}

function addMultipleModalSubMenuItem(classSubAhref,nameAhref,onclick){
	var allitems = "";
		for(var i=0;i<classSubAhref.length;i++) {
			allitems += addModalSubMenuItem(classSubAhref[i],nameAhref[i],onclick[i]);
		}

	return allitems;
}