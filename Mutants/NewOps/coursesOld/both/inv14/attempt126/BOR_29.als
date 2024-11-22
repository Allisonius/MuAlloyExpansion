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
(all student1,student2: (one Student) {
(all project1,project2: (one Project) {
((((project1 + project2) !in (student1.projects)) && ((project1 + project2) in (student2.projects))) => (project1 = project2))
})
})
}





