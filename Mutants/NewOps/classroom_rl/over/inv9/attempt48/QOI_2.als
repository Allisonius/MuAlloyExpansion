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
pred inv9[] {
((all c: (one Class) {
(lone ((Teaches.c) & Teacher))
}) && (some var123456 : Class { (var123456 in (lone (Teacher.Teaches)))}))
}





