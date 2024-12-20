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
(no p1,p2: (one Professor) {
(((p1 != p2) && (lone ((p1.teaches) & (p2.teaches)))) => (no ((p1.enrolled) & (p2.teaches))))
})
}





