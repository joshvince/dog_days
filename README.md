# Dog days

This is a toy app I built to try and figure out what my dog was allergic to. For just over a month in 2023, my wife and I used this to track our dog's behaviour in a (successful!) attempt to guess what was making him scratch so much.

You can read a lot more about it [over at my site](https://joshvince.site/blog/2023_08_03_dog_days).

Here's a quick demo:

![A video showing a demo of the app in action](public/dog-days-demo.mp4)

(If this doesn't appear 👆 check out the demo video in `public/dog-days-demo.mp4`)

## Tech stack
* Rails
* PostgresQL
* TailwindCSS
* Turbo
* Stimulus
* Originally deployed to Railway

## Installing
You'll need Ruby installed on your system. The version depends on the [.ruby-version file](/.ruby-version).

Clone the repo, change into the directory and then run the setup script
```bash
$ bin/setup
```

If you need to run any database migrations:
```bash
$ bin/rails db:migrate
```

## Starting the application
Rails 7 uses the [Procfile.dev](/Procfile.dev) to start two processes: one for the rails server and one tailwind.

You can start both by running
```bash
$ bin/dev
```

## Deployment
This is no longer hosted anywhere, but was originally on [Railway.app](https://railway.app).

## Running the, er, tests
I'll be honest, I wrote this mostly as a way to explore the Rails 7 [Hotwired](https://hotwired.dev) tech... I didn't write any tests here 🙈

## Database backup
If you are me, in the future, trying to remember where you stored the data: it's in an S3 bucket as a DB dump, and as CSVs.

## What does your dog look like?
I'm glad you asked

![Jeremy](/public/jeremy.jpg)
