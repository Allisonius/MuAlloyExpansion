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
((all c: (one Course),disj p0,p1: (one Professor) {
((c in (p0.teaches)) => (c !in (p1.enrolled)))
}) && (all c: (one Course),disj p0,p1: (one Professor) {
(((c in (p0.enrolled)) && (c != (p1.enrolled))) => ((c !in (p0.teaches)) && (c !in (p1.teaches))))
}))
}





