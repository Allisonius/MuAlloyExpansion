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
pred inv13[] {
(one p: (one Project) {
((((((Course))->(((Person))->((Grade)))) in grades) && (((Person)) in Student)) => (((((Person))->((Course))) in enrolled) && ((((Course))->p) in projects) && ((((Person))->p) in projects)))
})
}





