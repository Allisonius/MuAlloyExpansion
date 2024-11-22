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
((all p1: (one Project) {
(some pr1: (one Person) {
((pr1->p1) in projects)
})
}) && (all p2: (one Project) {
(one pr2: (one Person) {
(((pr2->p2) in projects) => (pr2 in Student))
})
}))
}





