module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(after ((iden in ((~adj).adj)) && ((adj.(~adj)) in iden)))
}