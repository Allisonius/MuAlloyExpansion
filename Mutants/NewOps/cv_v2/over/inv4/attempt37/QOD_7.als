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
(always ((no ((((((User)).visible) & (((User)).profile)).ids) & (((((User)).visible) & (((User)).profile)).ids))) && (all v: (one ((Work - ((((User)).visible) & (((User)).profile))) - ((((User)).visible) & (((User)).profile)))) {
((no ((((((User)).visible) & (((User)).profile)).ids) & (v.ids))) && (no ((((((User)).visible) & (((User)).profile)).ids) & (v.ids))))
})))
}





