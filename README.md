# Samuel Schlesinger's Personal Website

This is the personal website of me, Sam Schlesinger. The following will 
describe the structural design, the choice of [servant](https://servant.dev) as 
the framework, how to spin it up locally, and how it is deployed using AWS.

## Structure

I am using [Haskell](https://www.haskell.org) and the
[stack](https://docs.haskellstack.org/en/stable/README/) build tool. The reason
I chose to do things this way is mainly to do with my own skill set. I know
Haskell better than any other programming language and I use stack as my build
tool for personal projects as well as in my work. The project is organized
as of now into two packages, one for the API and another for the server itself.
The reasons I do this are to reduce build times when I am modifying a single
project, to allow for eventually switching over to a Haskell based front end
system, and to allow me to think of these as the separate units that they
really are in my opinion. I have a shared-package.yaml file which minimizes the
amount I have to write in each package.yaml, which stack uses for package
configuration.

## Framework: Servant

I really, really like the [servant](https://servant.dev) framework for building
and serving HTTP APIs. The ability to describe your API and then be forced
to implement a conforming server is exactly the type of thing that I believe
Haskell is useful for, with its powerful type level programming abilities. I
chose it because of my experience personally and professionally with it, and
my belief that it is a very good choice to build HTTP servers, from simple
to complex. It will also allow me to document the API quite easily.

## Run Locally

To run this locally, you simply run `stack run PORT` in a terminal while your
current directory is wherever you cloned the repository. 

## How to Deploy?

I will write this once I have deployed it. I have deployed websites before to
AWS, but I do not know if I will do this in the same way as I have done in the
past, as I want to use this as an opportunity to learn as much as possible in
a very simple context.
