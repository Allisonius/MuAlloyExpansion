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
(all s: (one (((User)).follows)) {
(some y: (one (s.follows)) {
((y !in (((User)).follows)) => ((y in (((User)).suggested)) && (((User)) != s) && (((User)) != y) && (s != ((User))) && (s != y)))
})
})
}





