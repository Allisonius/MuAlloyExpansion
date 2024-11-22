var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
all f:File | isLink[f] implies eventually f.link in Trash
}

pred isLink[f:File]{
some g:File | g->f in link
}