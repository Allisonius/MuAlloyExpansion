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
ids: (lone Id),
source: (one Source)
}
pred inv4[] {
(some u: (one User) {
(before (((u.visible) in Work) && (((~ids).ids) in iden) && ((ids.(~ids)) in iden)))
})
}