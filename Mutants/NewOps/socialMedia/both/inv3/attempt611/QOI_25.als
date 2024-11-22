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
pred inv3[] {
(((User.sees) = (((((User.follows).posts) + Ad) + (User.posts)) - (User.suggested))) && (all var123456 : Influencer { ((var123456.sees) = ((((var123456.follows).posts) + Ad) + (var123456.posts)))}))
}





