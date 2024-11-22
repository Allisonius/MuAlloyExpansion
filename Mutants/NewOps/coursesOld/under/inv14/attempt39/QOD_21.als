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
(all s1,s2: (one Student) {
((((((Project)) + ((Project))) in (s1.projects)) && (((Project)) in (s2.projects)) && (s1 != s2) && (((Project)) != ((Project)))) => (((Project)) !in (s2.projects)))
})
}





