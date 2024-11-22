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
source: (lone Source)
}
pred inv4[] {
(all disj w1,w2: (one Work) {
(all u: (one User) {
(((some ((w1.ids) & (w2.ids))) && ((u.profile) in (w1 + w2))) => (!((w1 + w2) in (u.visible))))
})
})
}