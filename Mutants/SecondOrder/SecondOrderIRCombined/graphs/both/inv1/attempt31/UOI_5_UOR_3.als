module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(eventually ((((~adj).adj) in iden) && ((adj.(~adj)) in iden)))
}