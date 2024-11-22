module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((no var123456 : Node { (no var123456)}) || (one n: (one Node) {
((n.(*adj)) = Node)
}))
}





