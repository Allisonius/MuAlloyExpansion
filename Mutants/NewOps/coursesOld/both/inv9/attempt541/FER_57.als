module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv9[] {
(all t,t1: (one Professor) {
(all c: (one Course) {
(((t != t1) && (c in (t.enrolled)) && (c in (t1.enrolled))) => ((c !in (t.teaches)) && (c !in (t1.enrolled))))
})
})
}





