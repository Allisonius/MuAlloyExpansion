module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
((iden in ((~adj).adj)) && (iden in (adj.(~adj))))
}