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
pred inv14[] {
(all p1,p2: (one Project) {
((((((Student))->p1) in projects) && ((((Student))->p1) in projects) && (((Student)) != ((Student)))) => (((((Student))->p2) !in projects) || (((((Student))->p2) !in projects) && (((Student)) != ((Student))))))
})
}





