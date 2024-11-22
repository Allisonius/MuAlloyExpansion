module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all s: (one Source) {
(lone w: (one (s.profile)),ww: (one Work) {
(((w.ids) = (ww.ids)) => (w = ww))
})
})
}