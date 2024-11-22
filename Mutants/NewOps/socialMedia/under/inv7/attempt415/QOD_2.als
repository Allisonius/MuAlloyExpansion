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
((((User)) in (((User)).suggested)) => (some p: (one User) {
((((User)) in (p.follows)) && (((User)) !in (((User)).follows)) && (p in (((User)).follows)))
}))
}





