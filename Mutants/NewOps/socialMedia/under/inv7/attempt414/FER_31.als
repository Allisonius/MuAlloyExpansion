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
(all x,y: (one User) {
(((x !in (x.posts)) && (x != y) && (y !in (x.follows)) && (y in ((x.follows).follows))) => (y in (x.suggested)))
})
}





