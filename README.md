# Boston Sleep

[![Build Status](https://travis-ci.org/sleepepi/bostonsleep.org.svg?branch=master)](https://travis-ci.org/sleepepi/bostonsleep.org)
[![Dependency Status](https://gemnasium.com/sleepepi/bostonsleep.org.svg)](https://gemnasium.com/sleepepi/bostonsleep.org)
[![Code Climate](https://codeclimate.com/github/sleepepi/bostonsleep.org/badges/gpa.svg)](https://codeclimate.com/github/sleepepi/bostonsleep.org)

The application that runs www.bostonsleep.org. Using Rails 5.2+ and Ruby 2.5+.


## Setting up Cron Jobs

Edit Cron Jobs `sudo crontab -e` to run the tasks

**Refreshing Sitemap**

```
SHELL=/bin/bash
0 1 * * * source /etc/profile.d/rvm.sh && cd /var/www/www.bostonsleep.org && /usr/local/rvm/gems/ruby-2.5.0/bin/bundle exec rake sitemap:refresh RAILS_ENV=production
```

## License

Boston Sleep is released under the [MIT License](http://www.opensource.org/licenses/MIT).
