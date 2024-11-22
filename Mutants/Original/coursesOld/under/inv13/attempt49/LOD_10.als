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
pred inv13[] {
(all c: (one Course),s: (one (enrolled.c)) {
((all g: (one ((c.grades).Person)) {
(ordering/gte[((c.grades).s),g])
}) => (c in (projects.(s.projects))))
})
}





