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
(all t1,t2: (one Professor),c: (one Professor) {
(((c in (t1.enrolled)) && (c in (t2.enrolled))) => (!(some c2: (one (t1.teaches)) {
(c2 in (t2.enrolled))
})))
})
}





