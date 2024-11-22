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
(all disj s1,s2: (one Student),p: (one Project) {
((((s1 in (projects.p)) && (s2 in (projects.p)) && (one (s1.(p.grades))) && (one (s2.((projects.p).grades)))) => (((s1.((projects.p).grades)).(ordering/next[])) = (s2.((projects.p).grades)))) || (((s1.((projects.p).grades)).(ordering/prev[])) = (s2.((projects.p).grades))) || ((s1.((projects.p).grades)) = (s2.((projects.p).grades))))
})
}





