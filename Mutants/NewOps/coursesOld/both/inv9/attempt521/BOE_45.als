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
(one c: (one Course) {
(all disj p0,p1: (one Professor) {
((c in (p0.teaches)) => (((p1.enrolled) !in c) && (c !in (p0.enrolled)) && (c !in (p1.teaches))))
})
})
}





