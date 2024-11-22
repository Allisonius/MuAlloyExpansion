module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
((no Node) || (no ({ n: (one Node) {
((n.(*adj)) = Node)
} })))
}