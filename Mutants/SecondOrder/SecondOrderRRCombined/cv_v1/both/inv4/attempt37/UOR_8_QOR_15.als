module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (lone Id),
source: (one Source)
}
pred inv4[] {
(one u: (one User),disj id1,id2: (one ((u.visible).ids)) {
(lone (ids.id1))
})
}