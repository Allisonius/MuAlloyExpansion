sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv9{
all x,y : File | isLinked[x] implies not isLinked[y]
}

pred isLinked[f:File]{
some g:File | g->f in link
}