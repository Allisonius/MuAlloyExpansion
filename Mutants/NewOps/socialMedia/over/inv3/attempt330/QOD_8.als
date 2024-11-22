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
pred inv3[] {
(all p: (one (((User)).sees)) {
(one u1: (one (((User)).follows)) {
((p !in (((User)).posts)) && ((p in Ad) || ((p in (u1.posts)) && (u1 in (((User)).follows)))))
})
})
}





