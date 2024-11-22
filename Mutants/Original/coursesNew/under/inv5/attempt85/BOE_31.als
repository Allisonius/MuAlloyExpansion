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
((all pro: (one Project) {
(all p: (one Person) {
(((p->pro) in projects) => (p in Student))
})
}) && (all p2: (one Project) {
(all pr2: (one Person) {
((pr2 in Student) => ((pr2->p2) in projects))
})
}))
}





