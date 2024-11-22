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
(all disj s1,s2: (one Student) {
(((((s1 + s2) in (projects.((Project)))) && ((s1 + s2) in (enrolled.((Course)))) && (((Project)) in (((Course)).projects))) => ((s1.(((Course)).grades)) = (s2.(((Course)).grades)))) || (((s1.(((Course)).grades)).(ordering/prev[])) = (s2.(((Course)).grades))) || ((s1.(((Course)).grades)) = ((s2.(((Course)).grades)).(ordering/prev[]))))
})
}





