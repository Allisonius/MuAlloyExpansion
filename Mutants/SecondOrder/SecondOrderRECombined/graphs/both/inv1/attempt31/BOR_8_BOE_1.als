module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((iden in ((~adj).adj)) && ((adj.(~adj)) = iden))
}