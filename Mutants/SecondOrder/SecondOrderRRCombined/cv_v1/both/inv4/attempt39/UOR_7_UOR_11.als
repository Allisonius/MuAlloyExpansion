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
ids: (set Id),
source: (lone Source)
}
pred inv4[] {
(all w: (one Work) {
(((~((visible :> w).ids)).((visible :> w).ids)) in iden)
})
}