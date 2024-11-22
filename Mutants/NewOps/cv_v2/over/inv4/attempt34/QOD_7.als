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
(always ((no (((((User)).profile).ids) & ((((User)).profile).ids))) && (all v: (one ((Work - (((User)).profile)) - (((User)).profile))) {
((no (((((User)).profile).ids) & (v.ids))) && (no (((((User)).profile).ids) & (v.ids))))
})))
}





