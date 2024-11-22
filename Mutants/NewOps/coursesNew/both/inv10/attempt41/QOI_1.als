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
pred inv10[] {
(some var123456 : Person { (({ p: (one var123456) {
(some (({ c: (one Course),p: (one var123456) {
(some (c.grades))
} }).p))
} }) in Professor)})
}





