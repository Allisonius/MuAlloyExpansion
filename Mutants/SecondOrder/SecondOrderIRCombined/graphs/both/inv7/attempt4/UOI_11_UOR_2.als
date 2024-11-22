module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
((^(adj + (~(~adj)))) = (Node->Node))
}