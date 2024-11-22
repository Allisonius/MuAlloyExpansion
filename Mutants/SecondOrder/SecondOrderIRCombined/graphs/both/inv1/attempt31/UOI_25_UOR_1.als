module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
((((~adj).adj) in iden) && ((adj.(^(~adj))) in iden))
}