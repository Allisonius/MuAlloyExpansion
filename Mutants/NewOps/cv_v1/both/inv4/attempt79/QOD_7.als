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
(((((Work)) = ((Work))) && ((((Work)) + ((Work))) in (u.profile))) => ((((Work)) in (u.visible)) <=> (!(((Work)) in (u.visible)))))
})
}





