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
((all x: (one Person) {
(((#(x.projects)) > 0) => (x in Student))
}) || (all x: (one Project) {
(all y: (one Person) {
(x in (y.projects))
})
}))
}





