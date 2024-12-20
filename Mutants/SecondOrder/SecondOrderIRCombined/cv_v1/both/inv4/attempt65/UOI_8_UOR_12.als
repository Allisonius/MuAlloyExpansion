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
source: (some Source)
}
pred inv4[] {
(all disj w1,w2: (one Work) {
(((some ((w1.ids) & (w2.ids))) && (w1 in (one (User.profile)))) => (w2 !in (User.visible)))
})
}