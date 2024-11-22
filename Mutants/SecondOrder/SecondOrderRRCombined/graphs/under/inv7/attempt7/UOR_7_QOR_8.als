module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((some Node) || (lone n: (one Node) {
((n.(*adj)) = Node)
}))
}