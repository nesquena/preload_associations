INTRODUCTION
============

This gem is exceptionally simple but also very handy. Let's say you are working in ActiveRecord and you have loaded a collection of objects in a query. You now want to preload associations for these already retrieved objects. This allows you to do that.

USAGE
=====

The usage of this is very straightforward:

    @users = User.all
    @users.preload(:posts)

This will eager load all posts for each user even after the initial find query has taken place. You can also use this to preload associations for a member as well:

    @user = User.first
    @user.preload(:posts)

Why not just do?

    @user.includes(:posts).all

Good question. In most cases this is the better option. This code is for when that approach is not available.