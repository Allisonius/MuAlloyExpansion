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
(all t1,t2: (one Track) {
((((one (t1 & Entry)) && (no (t2 & Exit))) => (t1 in (t2.(^succs)))) || (t1 = t2))
})
}





