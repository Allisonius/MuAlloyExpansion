module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no a,b: (one Node) {
((b in (a.(^adj))) && (b in (a.(^(~adj)))))
})
}