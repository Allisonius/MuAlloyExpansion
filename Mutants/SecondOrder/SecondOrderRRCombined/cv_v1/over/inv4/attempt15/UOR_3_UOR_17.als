module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (some Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(some u: (set User) {
(((u.visible) in Work) && (((~ids).ids) in iden) && ((ids.(~ids)) in iden))
})
}