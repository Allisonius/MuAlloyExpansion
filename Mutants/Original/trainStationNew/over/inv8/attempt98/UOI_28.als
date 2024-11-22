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
pred inv8[] {
(all entry: (one Entry) {
(all exit: (one Exit) {
((exit in (entry.(^succs))) || (exit in (entry.(*succs))))
})
})
}





