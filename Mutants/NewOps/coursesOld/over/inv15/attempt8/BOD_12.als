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
(all c: (one Course),p: (one (c.projects)) {
((ordering/max[(p.(c.grades))]) in ((ordering/min[((projects.p).(c.grades))]).(iden + (ordering/next[]))))
})
}





