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
pred inv1[] {
((all c: (one Course) {
(all p: (one Person) {
((p = Student) => (c in (p.enrolled)))
})
}) && (all p: (one Person) {
(((p.enrolled) in Course) => (p = Student))
}))
}





