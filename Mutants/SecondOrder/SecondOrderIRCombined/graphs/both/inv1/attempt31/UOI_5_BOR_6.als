module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(eventually ((((~adj).adj) != iden) && ((adj.(~adj)) in iden)))
}