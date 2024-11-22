module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (lone Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(some s: (one Source) {
(all w: (one (s.profile)),ww: (one Work) {
(((w.ids) = (ww.ids)) => (w = ww))
})
})
}