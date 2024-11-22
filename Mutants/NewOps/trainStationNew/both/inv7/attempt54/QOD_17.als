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
((all ts: (one (Track - ((Exit)))) {
(ts !in (((Exit)).succs))
}) && (all t: (one Entry) {
(all ts: (one (Track - t)) {
(t !in (ts.succs))
})
}))
}





