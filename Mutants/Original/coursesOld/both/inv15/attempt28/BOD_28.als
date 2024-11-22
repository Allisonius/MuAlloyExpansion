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
(all p: (one Project),disj s1,s2: (one Student) {
((p in ((s1.projects) & (s2.projects))) => (((~(Course.grades)).s2) in ((((~(Course.grades)).s1).(ordering/next[])) + (((~(Course.grades)).s1).(ordering/prev[])))))
})
}





