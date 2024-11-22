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
pred inv15[] {
((ordering/max[((projects.(((Course)).projects)).(((Course)).grades))]) in ((ordering/min[((projects.(((Course)).projects)).(((Course)).grades))]).(iden + (ordering/next[]))))
}





