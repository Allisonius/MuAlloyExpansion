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
pred inv8[] {
((((Ad)) in (((User)).sees)) => (some u2: (one User) {
((u2 in (((User)).follows)) || (u2 in (((User)).suggested)))
}))
}





