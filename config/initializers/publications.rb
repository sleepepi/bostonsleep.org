# frozen_string_literal: true

# Loads publications
yml_file = Rails.root.join("lib", "data", "publications.yml")
PUBLICATIONS = YAML.load_file(yml_file)
