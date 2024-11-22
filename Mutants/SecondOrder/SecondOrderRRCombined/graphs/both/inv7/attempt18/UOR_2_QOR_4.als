module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(no n: (one Node) {
((Node - n) = ((n.(^adj)) + (n.(^(~adj)))))
})
}