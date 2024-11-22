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
((all proj: (one Project) {
(((#(((Person)).projects)) > 0) => (((Person)) in Student))
}) && (all c: (one Course) {
(some p: (one Person) {
((c.projects) in (p.projects))
})
}))
}





