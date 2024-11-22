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
pred inv5[] {
((all p: (one Project) {
(all x: (one Person) {
((x in (projects.p)) => (x in Student))
})
}) && (some p1: (one Professor) {
(all p: (one Project) {
(p1 = (projects.p))
})
}))
}





