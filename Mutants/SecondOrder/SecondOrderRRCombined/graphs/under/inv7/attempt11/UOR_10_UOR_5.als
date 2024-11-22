module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((lone Node) || (no ({ n: (one Node) {
((n.(*adj)) = Node)
} })))
}