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
((all e: (one Entry) {
(all t: (one (Track - Entry)) {
(e !in (t.succs))
})
}) && (all e: (Track + Entry) {
(all t: (one (Track - Exit)) {
(t !in (e.succs))
})
}))
}





