module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once ((((~adj).adj) in iden) || ((adj.(~adj)) in iden)))
}