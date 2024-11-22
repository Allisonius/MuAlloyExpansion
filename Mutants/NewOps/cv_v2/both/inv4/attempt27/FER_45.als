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
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(always (all u: (one User) {
(all disj v1,v2: (one (u.visible)) {
(all v: (one (((u.profile) - v1) - v2)) {
((no ((v1.source) & (v2.ids))) && (((v1.ids) + (v2.ids)) in (v.ids)))
})
})
}))
}





