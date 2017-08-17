# frozen_string_literal: true

# To run task
# rails sitemap:refresh:no_ping
# Or production
# rails sitemap:refresh RAILS_ENV=production
# https://www.google.com/webmasters/tools/

require "rubygems"
require "sitemap_generator"

SitemapGenerator.verbose = false
SitemapGenerator::Sitemap.default_host = "https://bostonsleep.org"
SitemapGenerator::Sitemap.sitemaps_host = ENV["website_url"]
SitemapGenerator::Sitemap.public_path = "carrierwave/sitemaps/"
SitemapGenerator::Sitemap.sitemaps_path = ""
SitemapGenerator::Sitemap.create do
  add "/", changefreq: "weekly", priority: 0.7
  add "/about", changefreq: "weekly", priority: 0.7
  add "/services", changefreq: "weekly", priority: 0.7
  add "/facility", changefreq: "weekly", priority: 0.7
  add "/research", changefreq: "weekly", priority: 0.7
  add "/staff", changefreq: "weekly", priority: 0.7
  add "/contact", changefreq: "monthly", priority: 0.3
end
