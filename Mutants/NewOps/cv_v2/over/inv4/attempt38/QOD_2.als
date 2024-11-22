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
((no ((((u.visible) & (u.profile)).ids) & (((u.visible) & (u.profile)).ids))) && (all v: (one ((Work - ((u.visible) & (u.profile))) - ((u.visible) & (u.profile)))) {
((no ((((u.visible) & (u.profile)).ids) & (v.ids))) && (no ((((u.visible) & (u.profile)).ids) & (v.ids))))
}))
}))
}





