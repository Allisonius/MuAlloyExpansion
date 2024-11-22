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
(no disj u,o: (one User) {
(((o in ((u.follows).follows)) && (o !in (u.follows))) => (o in (u.suggested)))
})
}





