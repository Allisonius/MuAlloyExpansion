module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
((no Node) || (one n: (one Node) {
((n.(~(*adj))) = Node)
}))
}