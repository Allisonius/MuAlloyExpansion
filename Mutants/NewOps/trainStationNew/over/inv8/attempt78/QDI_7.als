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
(all ex,ent: (Track - Junction) {
(((ex in Exit) && (ent in Entry)) => (ex in (ent.(^succs))))
})
}





