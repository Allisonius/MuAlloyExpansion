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
(all w1,w2: (one Work) {
((once ((w1 != w2) && ((w1 + w2) in (User.visible)))) => (no ((w1.ids) & (w2.ids))))
})
}