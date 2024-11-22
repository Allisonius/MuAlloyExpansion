module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(always ((((~adj).adj) in iden) && ((adj.(~adj)) in iden)))
}