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
pred inv3[] {
((no var123456 : Junction { (no (Entry & var123456))}) && (no ((Entry & Junction) & Exit)) && (no (Exit & Entry)) && (no (Exit & Junction)) && (all x: (one Track) {
((x in Exit) => (no (x.succs)))
}))
}





