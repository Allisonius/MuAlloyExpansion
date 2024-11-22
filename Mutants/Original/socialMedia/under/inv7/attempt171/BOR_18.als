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
(all e: (one User),o: (one User),s: (one User) {
(((e in o) && (s in o) && (e in s)) => (s in (e.suggested)))
})
}





