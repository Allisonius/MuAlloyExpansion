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
(all e: (one User),o: (one User),s: (one Influencer) {
(((o in (e.follows)) && (o in (s.follows)) && (s !in (e.follows))) => (s in (e.suggested)))
})
}





