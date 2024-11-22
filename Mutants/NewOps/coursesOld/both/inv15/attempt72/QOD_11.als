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
((((((Student)) + ((Student))) in (projects.((Project)))) => (((((Student)).((projects.((Project))).grades)).(ordering/next[])) = (((Student)).((projects.((Project))).grades)))) || (((((Student)).((projects.((Project))).grades)).(ordering/prev[])) = (((Student)).((projects.((Project))).grades))) || ((((Student)).((projects.((Project))).grades)) = (((Student)).((projects.((Project))).grades))))
}





