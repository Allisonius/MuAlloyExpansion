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
pred inv1[] {
(((((univ)) in User) && (((univ)) in User) && (((univ)) in Photo) && ((((univ))->((univ))) in posts) && ((((univ))->((univ))) in posts)) => (((univ)) = ((univ))))
}





