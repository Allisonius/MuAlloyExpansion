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
pred inv2[] {
(all t1,t2: (one Speed),s: (one Signal) {
(((s in (t1.((^succs).signals))) && (s in (t2.((^succs).signals)))) => (t1 = t2))
})
}





