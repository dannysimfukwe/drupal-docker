# Drupal Docker

Deploy a fully functional Drupal CMS on [42helv.com](https://42helv.com).

## Features

- **One-Click Deploy** - Deploy directly from 42helv.com templates
- **MySQL Database** - Automatically provisioned and configured
- **Apache + PHP** - Optimized configuration for Drupal
- **SSL Ready** - Works with 42helv.com automatic SSL

## Quick Start

### Deploy on 42helv.com

1. Sign up at [42helv.com](https://42helv.com)
2. Go to **Services** → **Create New**
3. Select the **Drupal** template
4. Configure your site and deploy

Your Drupal site will be available at `https://your-site.42helv.com/`

### Initial Setup

After deployment, access the Drupal admin panel at:
- **Site URL**: `https://your-site.42helv.com/`
- **Admin URL**: `https://your-site.42helv.com/user`
- Create your admin account during the installation wizard

## Configuration

The following environment variables are available:

| Variable | Default | Description |
|----------|---------|-------------|
| `DRUPAL_DB_HOST` | (auto) | Database host |
| `DRUPAL_DB_PORT` | `3306` | Database port |
| `DRUPAL_DB_NAME` | `drupal` | Database name |
| `DRUPAL_DB_USER` | (auto) | Database user |
| `DRUPAL_DB_PASSWORD` | (auto) | Database password |

## Local Development

```bash
# Clone the repository
git clone https://github.com/dannysimfukwe/drupal-docker.git
cd drupal-docker

# Start with Docker Compose
docker-compose up -d

# Access Drupal at http://localhost:8080
```

## Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    Apache (Port 80)                     │
│                    + PHP-FPM                            │
└──────────────────────────┬──────────────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────┐
│                       Drupal                            │
│               (powerful CMS for complex sites)          │
└──────────────────────────┬──────────────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────┐
│                   MySQL (Port 3306)                    │
│                   (content database)                    │
└─────────────────────────────────────────────────────────┘
```

## Tech Stack

- [Drupal](https://www.drupal.org/) - Powerful open-source CMS
- Apache - Web server
- PHP 8.x - Programming language
- MySQL - Database

## Security Notes

1. **Strong credentials** - Use strong username and password during install
2. **SSL enabled** - Automatic HTTPS via 42helv.com
3. **Keep updated** - Regularly update Drupal core and modules
4. **Security modules** - Consider installing security modules like Security Review

## Troubleshooting

### Installation wizard not working?
Verify your `DRUPAL_DB_*` environment variables are correct.

### Database connection issues?
Check that MySQL is accessible and credentials are correct.

### Performance issues?
Drupal has many caching options - enable them in Configuration → Performance.

### Need to reset?
Delete all files and the database, then redeploy from 42helv.com.

## License

MIT License - Deploy freely on 42helv.com or your own infrastructure.

---

Built with ❤️ on [42helv.com](https://42helv.com)