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
(all disj p1,p2: (one Professor) {
(all c: (one Course) {
((c in (p2.teaches)) => ((p1.enrolled) !in (p2.teaches)))
})
})
}





