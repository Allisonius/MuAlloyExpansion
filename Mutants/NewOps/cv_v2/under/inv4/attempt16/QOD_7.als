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
(always (all disj v1,v2: (one ((((User)).visible) & (((User)).profile))) {
((no ((v1.ids) & (v2.ids))) && (all v: (one (((((User)).profile) - v1) - v2)) {
(!(((v1.ids) = (v.ids)) && ((v2.ids) = (v.ids))))
}))
}))
}





