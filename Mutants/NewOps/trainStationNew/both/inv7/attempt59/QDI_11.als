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
((all t: (Track - Entry) {
((t !in Exit) => (some ts: (one Track) {
(ts in (t.succs))
}))
}) && (all t: (one Track) {
((t in Exit) => (all ts: (one Track) {
(t !in (ts.succs))
}))
}))
}





