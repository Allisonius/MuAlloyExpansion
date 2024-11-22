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
(((((User)) in (((User)).suggested)) && (((User)) !in (((User)).follows))) => (some o: (one User) {
((o in (((User)).follows)) && (((User)) in (o.follows)) && (((User)) != o) && (((User)) != ((User))) && (((User)) != o))
}))
}





