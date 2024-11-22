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
source: (one Source)
}
pred inv3[] {
(all w1,w2: (one Work) {
(((w1 in (some (User.profile))) && (w2 in (User.profile))) => ((w1.ids) !in (w2.ids)))
})
}