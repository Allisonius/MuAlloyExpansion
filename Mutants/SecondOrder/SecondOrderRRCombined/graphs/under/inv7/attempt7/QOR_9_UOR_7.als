module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((some Node) || (no n: (one Node) {
((n.(*adj)) = Node)
}))
}