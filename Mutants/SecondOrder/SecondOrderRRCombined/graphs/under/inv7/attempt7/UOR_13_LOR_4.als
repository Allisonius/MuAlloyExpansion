module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((no Node) && (some n: (lone Node) {
((n.(*adj)) = Node)
}))
}