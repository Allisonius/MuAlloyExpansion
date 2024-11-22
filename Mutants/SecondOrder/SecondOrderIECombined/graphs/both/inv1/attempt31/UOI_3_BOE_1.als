module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once ((iden in ((~adj).adj)) && ((adj.(~adj)) in iden)))
}