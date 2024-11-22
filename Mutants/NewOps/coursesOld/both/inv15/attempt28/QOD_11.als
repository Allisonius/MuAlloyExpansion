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
((((Project)) in ((((Student)).projects) & (((Student)).projects))) => (((~(Course.grades)).((Student))) in (((((~(Course.grades)).((Student))).(ordering/next[])) + (((~(Course.grades)).((Student))).(ordering/prev[]))) + ((~(Course.grades)).((Student))))))
}





