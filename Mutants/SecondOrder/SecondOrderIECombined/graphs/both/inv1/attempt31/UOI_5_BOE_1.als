module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(eventually ((iden in ((~adj).adj)) && ((adj.(~adj)) in iden)))
}