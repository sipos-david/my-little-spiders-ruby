# My Little Spiders

A Ruby on Rails app to take steps towards a better relationship with spiders.

## Getting Started

### Prerequisites

You need to have these installed on your system:

- Ruby 3.2.2 or higher
- MariaDB 10.11.2 locally or remote
- libmariadbd-dev locally

### Installation

After cloning the repo you can install the gems with following command:

```bash
bundle install
```

After successfully installing the gems you have `rails` command, with that you can set up the database:

```bash
rails db:migrate
```

## Development

You can start the server in development mode with the following command:

```bash
rails server
```

Visit the app in your browser at [http://localhost:3000](http://localhost:3000)
