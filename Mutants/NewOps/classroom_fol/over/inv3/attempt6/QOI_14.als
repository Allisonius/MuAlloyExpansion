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
pred inv3[] {
((Student = (Person - Teacher)) && (some var123456 : Person { (Teacher = (var123456 - Student))}))
}





