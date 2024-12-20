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
(all s1,s2: (one Student),p: (one Project),c: (one Course) {
(((p in (s1.projects)) && (p in (s2.projects)) && (p in (c.projects))) => (((((Grade)) in (s1.(c.grades))) && (((Grade)) in (s2.(c.grades)))) => ((((Grade)) = (((Grade)).(ordering/prev[]))) || (((Grade)) = (((Grade)).(ordering/prev[]))) || (((Grade)) = ((Grade))))))
})
}





