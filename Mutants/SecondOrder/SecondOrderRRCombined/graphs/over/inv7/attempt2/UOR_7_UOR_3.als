module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
((^adj) = (Node->Node))
}