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
pred inv5[] {
(some t2,t3: (one Track) {
((Junction in ((Track))) => ((((Track)) in (t2.succs)) && (((Track)) in (t3.succs)) && (t2 != t3)))
})
}





