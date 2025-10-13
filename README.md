# Phemes Voice - Gossip Podcast Hub

A Rails 8 application for saving and managing podcast episodes about gossip, with the ability to add opinion columns related to podcast episodes.

## Features

- **Podcast Episode Management**: Save, edit, and organize gossip podcast episodes
- **Opinion Columns**: Write and manage opinion pieces related to specific podcast episodes
- **Modern UI**: Built with Bootstrap 5 for a responsive and attractive interface
- **View Components**: Uses Trailblazer Cells for reusable UI components
- **PostgreSQL Database**: Robust data storage with proper relationships

## Technology Stack

- **Ruby**: 3.2.2
- **Rails**: 8.0 (latest version)
- **Database**: PostgreSQL
- **CSS Framework**: Bootstrap 5
- **View Components**: Trailblazer Cells
- **JavaScript**: Stimulus + Turbo (Hotwire)

## Getting Started

### Prerequisites

- Ruby 3.2.2 or later
- PostgreSQL
- Node.js (for CSS compilation)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd phemes_voice
```

2. Install Ruby dependencies:
```bash
bundle install
```

3. Install Node.js dependencies:
```bash
yarn install
```

4. Set up the database:
```bash
rails db:create
rails db:migrate
rails db:seed
```

5. Start the development server:
```bash
rails server
```

Or use the provided development script:
```bash
bin/dev
```

Visit `http://localhost:3000` to see the application.

## Usage

### Podcast Episodes

- **Create**: Add new podcast episodes with title, description, URL, duration, and tags
- **View**: Browse episodes in a card-based layout with episode details
- **Edit**: Update episode information
- **Delete**: Remove episodes (will also remove associated opinion columns)

### Opinion Columns

- **Create**: Write opinion pieces related to specific podcast episodes
- **View**: Read opinion columns with author information and publication dates
- **Edit**: Update opinion content
- **Delete**: Remove opinion columns

### Navigation

- **Home**: View all podcast episodes
- **Podcast Episodes**: Manage podcast episodes
- **Opinion Columns**: Browse all opinion columns
- **Add New**: Quick links to create new episodes or opinion columns

## Database Schema

### Podcast Episodes
- `title` (string): Episode title
- `description` (text): Episode description
- `publish_date` (datetime): Publication date
- `episode_url` (string): Link to the episode
- `duration` (integer): Duration in seconds
- `show_notes` (text): Additional show notes
- `tags` (text): Comma-separated tags

### Opinion Columns
- `title` (string): Column title
- `content` (text): Column content
- `author_name` (string): Author name
- `publish_date` (datetime): Publication date
- `podcast_episode_id` (integer): Reference to related episode

## Development

### Running Tests
```bash
rails test
```

### Linting
```bash
bundle exec rubocop
```

### Database Console
```bash
rails dbconsole
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License

This project is licensed under the MIT License.
