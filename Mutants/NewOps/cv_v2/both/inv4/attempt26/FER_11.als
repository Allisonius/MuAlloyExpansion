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
(always (all u: (one User),disj v1,v2: (one (u.profile)),v: (one (((u.profile) - v1) - v2)) {
((no ((v1.ids) & (v2.ids))) && (no ((v1.ids) & (v.ids))) && (no ((v2.ids) & (v.ids))))
}))
}





