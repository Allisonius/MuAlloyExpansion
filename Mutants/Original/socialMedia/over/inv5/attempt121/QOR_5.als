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
pred inv5[] {
(some u1: (one User) {
(all inf: (one Influencer) {
((inf in (u1.follows)) && (inf !in (inf.follows)) && (inf !in (follows.inf)))
})
})
}





