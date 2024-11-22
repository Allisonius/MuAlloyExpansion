module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
((*(adj + (~adj))) = (Node->Node))
}