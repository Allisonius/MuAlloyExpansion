sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv9{
all f1,f2 : File | is_link[f1] implies not is_link[f2]
}

pred is_link[f : File]{
some g : File | f->g in link
}