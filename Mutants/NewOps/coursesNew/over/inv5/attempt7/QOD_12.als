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
((((((Person))->((Project))) in projects) => (((Person)) in Student)) && (all p: (one Project) {
(one x: (one Person) {
((x->p) in projects)
})
}))
}





