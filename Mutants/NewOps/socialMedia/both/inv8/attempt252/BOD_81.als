module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(all x1,x2: (one User) {
(some p: (one Photo) {
(((p in Ad) && (p in (x1.sees))) => (((p in (x2.posts)) && (x1 in (follows.x2))) || ((p in x2) && (x2 in (suggested.x1)))))
})
})
}





