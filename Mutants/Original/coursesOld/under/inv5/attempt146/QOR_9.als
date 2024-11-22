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
(all p1: (one Person) {
(some pr: (one Project) {
((((p1->pr) in projects) => (p1 in Student)) && (some p2: (one Person) {
((p2->pr) in projects)
}))
})
})
}





