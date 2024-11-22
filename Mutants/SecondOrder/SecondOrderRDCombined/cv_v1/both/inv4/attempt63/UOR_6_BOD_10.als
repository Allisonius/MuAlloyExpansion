module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all disj w1,w2: (one Work) {
(((some ((w1.ids) & (w2.ids))) && (w1 in User)) => (w2 !in (User.visible)))
})
}