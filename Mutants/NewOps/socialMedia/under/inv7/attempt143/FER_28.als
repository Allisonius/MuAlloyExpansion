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
pred inv7[] {
(all disj a,b: (one User) {
(((a in ((b.posts).follows)) && (a !in (b.follows))) => (a in (b.suggested)))
})
}





