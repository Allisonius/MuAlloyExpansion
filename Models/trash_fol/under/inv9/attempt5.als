sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv9{
all f1,f2,f3,f4:File | f1->f2 in link and f3->f4 in link implies f2->f3 not in link
}