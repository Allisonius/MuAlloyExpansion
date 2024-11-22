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
ids: (one Id),
source: (one Source)
}
pred inv3[] {
(no s: (one Source) {
(all w: (one (s.profile)),ww: (one Work) {
(((w.ids) = (ww.ids)) => (w = ww))
})
})
}