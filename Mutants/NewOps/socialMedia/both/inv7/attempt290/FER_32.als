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
(all e,s,o: (one User) {
(((e in (s.suggested)) && (s in (o.follows)) && (e !in (o.follows))) => (o in (e.suggested)))
})
}





