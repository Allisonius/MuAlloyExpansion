module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (one Id),
source: (one Source)
}
pred inv3[] {
(all u: (one User) {
(one ((u.profile).ids))
})
}