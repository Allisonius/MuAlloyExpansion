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
((((Ad)) in (((User)).sees)) => (some z: (one User) {
((((Ad)) in (z.posts)) && (z in (((User)).follows)))
}))
}





