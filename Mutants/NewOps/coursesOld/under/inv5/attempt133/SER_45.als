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
((all p: (one Project),b: (one Person) {
((p in (b.projects)) => (b in Student))
}) && (all p: (one Student) {
(some Person)
}))
}





