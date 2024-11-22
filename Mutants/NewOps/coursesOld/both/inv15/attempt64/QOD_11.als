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
(all p: (one Project) {
(all c: (one Course) {
((((((Student)) != ((Student))) && (p in ((((Student)).projects) & (((Student)).projects)))) => ((((Student)).(c.grades)) = ((((Student)).(c.grades)).(ordering/prev[])))) || ((((Student)).(c.grades)) = ((((Student)).(c.grades)).(ordering/prev[]))) || ((((Student)).(c.grades)) = (((Student)).(c.grades))))
})
})
}





