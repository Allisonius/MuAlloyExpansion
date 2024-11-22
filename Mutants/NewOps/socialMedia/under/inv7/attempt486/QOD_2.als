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
((((User)) in (((User)).suggested)) => (some z: (one User) {
((((User)) != ((User))) && (z in (((User)).follows)) && (z in (follows.((User)))) && (((User)) !in (((User)).follows)))
}))
}





