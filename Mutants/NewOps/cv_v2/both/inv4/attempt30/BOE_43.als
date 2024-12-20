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
(all disj v1,v2: (one ((u.visible) & (u.profile))) {
((!((v1.ids) = (v2.ids))) && (all v: (one (v2 - ((u.profile) - v1))) {
((no ((v1.ids) & (v.ids))) && (no ((v2.ids) & (v.ids))))
}))
})
}))
}





