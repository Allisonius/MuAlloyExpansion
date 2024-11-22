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
ids: (set Id),
source: (one Source)
}
pred inv3[] {
(all s: (one Source),u: (one User) {
(all disj i1,i2: (one ((u.profile).ids)) {
(i1 != i2)
})
})
}