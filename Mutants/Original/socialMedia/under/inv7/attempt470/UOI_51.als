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
(all disj e,s,o: (one User) {
(((s in (e.follows)) && (o in (s.follows)) && (o !in (e.follows))) => ((o in (e.suggested)) && (e !in (e.(^suggested)))))
})
}





