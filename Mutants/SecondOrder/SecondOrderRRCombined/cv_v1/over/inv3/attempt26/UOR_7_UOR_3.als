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
ids: (set Id),
source: (one Source)
}
pred inv3[] {
(all w1,w2: (one Work) {
(((w1 in (User.profile)) && (w2 in (User.profile))) => ((w1.ids) != (w2.ids)))
})
}