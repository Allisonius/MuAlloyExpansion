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
(all g1: (one (((Student)).(Course.grades))) {
(all g2: (one (((Student)).(Course.grades))) {
((some ((((Student)).projects) & (((Student)).projects))) => ((g2 in (g1.(ordering/prev[]))) || (g1 in (g2.(ordering/prev[])))))
})
})
}





