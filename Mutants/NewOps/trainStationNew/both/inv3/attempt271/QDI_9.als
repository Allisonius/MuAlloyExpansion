module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv3[] {
(all track: (Track & Entry) {
((no (track.(^succs))) => ((track in Exit) && (all entry: (one Entry) {
(all junction: (one Junction) {
((track != entry) && (junction != track))
})
})))
})
}





