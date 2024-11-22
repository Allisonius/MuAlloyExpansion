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
((((((Student)) != ((Student))) && (((Project)) in (((Student)).projects)) && (((Project)) in (((Student)).projects)) && (((Project)) in (((Course)).projects)) && ((((Student))->((Grade))) in (((Course)).grades)) && ((((Student))->((Grade))) in (((Course)).grades))) => ((((Grade)).(ordering/prev[])) = ((Grade)))) || (((Grade)) = ((Grade))) || ((((Grade)).(ordering/next[])) = ((Grade))))
}





