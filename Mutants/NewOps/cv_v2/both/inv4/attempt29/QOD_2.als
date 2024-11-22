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
(all v: (one (((u.profile) - (u.visible)) - (u.visible))) {
((no (((u.visible).ids) & ((u.visible).ids))) && (no (((u.visible).ids) & (v.ids))) && (no (((u.visible).ids) & (v.ids))))
})
}))
}





