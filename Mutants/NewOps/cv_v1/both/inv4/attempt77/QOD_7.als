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
(all u: (one User) {
(((some ((((Work)).ids) & (((Work)).ids))) && ((((Work)) + ((Work))) in (u.profile))) => (!((((Work)) + ((Work))) in (u.visible))))
})
}





