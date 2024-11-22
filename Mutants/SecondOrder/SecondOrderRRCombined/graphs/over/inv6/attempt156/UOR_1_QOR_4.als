module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(no n: (one Node) {
((Node - n) in ((n.(^adj)) + (n.(^(~adj)))))
})
}