module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(!((^adj) in iden))
}