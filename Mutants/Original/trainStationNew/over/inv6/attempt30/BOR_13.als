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
pred inv6[] {
(all t: (one Track) {
(one s: (one Signal) {
((s = (t.signals)) && (s in Speed))
})
})
}





