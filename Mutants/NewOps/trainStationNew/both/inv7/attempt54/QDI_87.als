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
pred inv7[] {
((all t: (one Exit) {
(all ts: (one (Track - t)) {
(ts !in (t.succs))
})
}) && (all t: (one Entry) {
(all ts: (Track & Exit) {
(t !in (ts.succs))
})
}))
}





