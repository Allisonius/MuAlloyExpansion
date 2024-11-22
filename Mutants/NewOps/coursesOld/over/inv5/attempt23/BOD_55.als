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
((all p: (one Project),p1: (one Person) {
((p1 in (projects.p)) => (p1 in Student))
}) && (all p: (one Project) {
(!(lone person: (one Person) {
(person in p)
}))
}))
}





