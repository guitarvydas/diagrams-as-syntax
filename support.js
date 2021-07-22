function decodeMxDiagram (encoded) {
    var data = window.atob (encoded);
    var inf = pako.inflateRaw (
	Uint8Array.from (data, c=>c.charCodeAt (0)), {to: 'string'})
    var str = decodeURIComponent (inf);
    return str;
}

function expandStyle (s) {
    var sx = s
	.replace(/"/g,'')
	.replace(/ellipse;/g,'kind=ellipse;')
	.replace(/text;/g,'kind=text;')
	.replace (/([^=]+)=([^;]+);/g, '$1="$2" ');
    return sx;
}
function nameMangle (s) {
    return s
	.replace (/-/g, '__');
}


var nameIndexTable = [];
var counter = 0;

function newID (s) {
    scopeModify ('id', s);
    nameIndexTable[s] = counter;
    counter += 1;
    return '';
}

function setID (s) {
    scopeModify ('id', s);
    return '';
}

function getID () {
    var s = scopeGet ('id');
    return refID (s);
}

function refID (s) {
    var n = nameIndexTable[s];
    if (n) {
	return "id" + n.toString();
    } else {
	return s;
    }
}    
