# Coding challenge: modal

This is a self-contained coding challenge. The most important part is to look at the code together, and to understand your reasoning about it. Also, more important than finishing it is to think about all its elements.

It's a small monolithic rails 7 app (with practically no features implemented in it). When you visit `localhost:3000` you will be greeted with a list of `cycles` (it's one of the concepts in our domain, they represent environmental impacts information about a product or service). The app does not do anything else (yet).

## Instructions to fulfill the challenge

To participate in the challenge, please clone the repository, then go to this repository's issues, and create a copy of each one of the issues (I'm afraid you'll have to copy-paste the contents of those, since cloning does not carry the issues).

For each issue in GitHub, create a Pull Request (and do **not** merge them!). For issues that depend on each other, please branch out from the branch the issue depends on instead of from main.

We will be looking at:

 * Code quality and design patterns
 * Code readability and clarity
 * [Self]documentation

Bonus points for writing tests for all the issues (the app has test for RSpec, but you're free to choose Minitest if you prefer (it's also set up))

## Instructions to set up

Clone the project:
```bash
git clone git@github.com:Earthster/code-challenge-modal.git
```

Get into the folder and install gems:
```bash
cd code-challenge-modal
bundle
```

Migrate and seed your database:
```bash
rails db:migrate db:seed
```

Run the server:
```bash
rails s
```
