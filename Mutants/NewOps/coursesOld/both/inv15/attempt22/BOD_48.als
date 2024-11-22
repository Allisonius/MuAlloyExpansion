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
(all disj s1,s2: (one Student),c: (one Course) {
((some (((s1.projects) & (s2.projects)) & (c.projects))) => ((s1.(c.grades)) in (((s2.(c.grades)).(ordering/prev[])) + ((s2.(c.grades)).(ordering/next[])))))
})
}





