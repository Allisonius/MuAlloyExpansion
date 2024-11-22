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
((((((User)) in (((User)).follows)) && (((User)) in (((User)).follows)) && (((User)) !in (((User)).follows)) && (((User)) != ((User))) && (((User)) != ((User)))) => (((User)) in (((User)).suggested))) && (all u,u2: (one User) {
((u2 in (u.suggested)) => (some u3: (one User) {
((u3 in (u.follows)) && (u2 in (u3.follows)))
}))
}) && (all u: (one User) {
(u !in (u.suggested))
}))
}





