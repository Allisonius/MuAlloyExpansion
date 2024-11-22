module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((no Node) || (all var123456 : Node { (some ({ n: (one var123456) {
((n.(*adj)) = var123456)
} }))}))
}





