sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv6{
all f1,f2 : File, l : univ | f1->l in link and f2->l in link implies f1 = f2
}