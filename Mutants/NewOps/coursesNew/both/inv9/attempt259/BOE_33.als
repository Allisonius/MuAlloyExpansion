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
pred inv9[] {
(all x,z: (one Professor),y: (one Course) {
((((teaches.y) in x) && (z in (teaches.y))) => ((x !in (enrolled.y)) && (z !in (enrolled.y))))
})
}





