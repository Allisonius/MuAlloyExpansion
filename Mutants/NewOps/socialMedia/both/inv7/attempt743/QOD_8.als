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
(((((User)) != ((User))) && (((User)) in (((User)).suggested))) => ((((User)) !in (((User)).follows)) && (((User)) != ((User))) && (all u3: (one User) {
((u3 in (((User)).follows)) && (((User)) in (u3.follows)) && (u3 != ((User))) && (u3 != ((User))))
})))
}





