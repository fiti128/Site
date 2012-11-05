function menuItem(path,pathTwo,icon,name) {
var pre="/LegresProject/";
var menuItem;
path=pre + path;
pathTwo=pre +pathTwo;
	if (window.location.pathname == path || window.location.pathname == pathTwo){
		menuItem="<li class='active'>" +
				"<a href='"+path+"'>" +
				"<i class='"+icon+" icon-white'></i>" +
				" "+name+"</a></li>";
		}
		else {
		menuItem="<li>" +
		"<a href='"+path+"'>" +
		"<i class='"+icon+"'></i>" +
		" "+name+"</a></li>";	
		}	
	document.write(menuItem);
}
function menuItem1(path,pathTwo,pathThree,icon,name) {
	var pre="/LegresProject/";
	var menuItem;
	path=pre + path;
	pathTwo=pre +pathTwo;
	pathThree=pre+pathThree;
		if (window.location.pathname == path || window.location.pathname == pathTwo|| window.location.pathname == pathThree){
			menuItem="<li class='active'>" +
					"<a href='"+path+"'>" +
					"<i class='"+icon+" icon-white'></i>" +
					" "+name+"</a></li>";
			}
			else {
			menuItem="<li>" +
			"<a href='"+path+"'>" +
			"<i class='"+icon+"'></i>" +
			" "+name+"</a></li>";	
			}	
		document.write(menuItem);
	}
