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
(((((User))->((User))) in suggested) => (all u3: (one User) {
(((((User))->u3) in follows) && ((u3->((User))) in follows) && ((((User))->((User))) !in follows) && (((User)) != ((User))))
}))
}





