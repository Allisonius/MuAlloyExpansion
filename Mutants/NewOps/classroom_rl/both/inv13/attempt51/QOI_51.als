module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv13[] {
((no (Student.Tutors)) && (some (Teacher.Tutors)) && (no var123456 : Student { ((Teacher.Tutors) in var123456)}) && (no (Tutors.Teacher)) && (some (Tutors.Student)) && ((Tutors.Student) in Teacher))
}





