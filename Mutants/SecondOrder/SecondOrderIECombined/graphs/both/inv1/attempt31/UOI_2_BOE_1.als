module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(historically ((iden in ((~adj).adj)) && ((adj.(~adj)) in iden)))
}