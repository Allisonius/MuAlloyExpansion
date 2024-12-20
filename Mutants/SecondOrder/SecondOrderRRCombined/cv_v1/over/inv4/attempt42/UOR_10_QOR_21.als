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
source: (set Source)
}
pred inv4[] {
(all w: (one Work) {
(no u: (one User) {
(((visible.w) in User) && (((~ids).ids) in iden) && ((ids.(~ids)) in iden) && ((u.visible) in Work))
})
})
}