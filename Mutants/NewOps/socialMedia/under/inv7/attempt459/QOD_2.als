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
((((User)) in (((User)).suggested)) => (some x3: (one User) {
((((User)) in (x3.follows)) && (x3 in (((User)).follows)) && (((User)) !in (((User)).follows)))
}))
}





