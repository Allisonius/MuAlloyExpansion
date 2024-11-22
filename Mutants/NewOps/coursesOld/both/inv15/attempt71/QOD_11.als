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
(all p: (one Project),c: (one Course) {
(((((((Student)) + ((Student))) in (projects.p)) && ((((Student)) + ((Student))) in (enrolled.c)) && (p in (c.projects)) && (((((Student))->((Grade))) + (((Student))->((Grade)))) in (c.grades))) => (((Grade)) = ((Grade)))) || ((((Grade)).(ordering/prev[])) = ((Grade))) || (((Grade)) = (((Grade)).(ordering/prev[]))))
})
}





