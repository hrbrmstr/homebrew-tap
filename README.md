# hrbrmstr's Homebrew Tap

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install hrbrmstr/tap/name
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap hrbrmstr/tap
```

## What packages are available?

With the following commands, you can install the latest generally available (GA) version of each package:
```sh
# Formulae
brew install hrbrmstr/tap/archinfo     # list running processes and the architecture they are running under
brew install hrbrmstr/tap/ipv4-heatmap # Generate IPv4 12th order Hilbert heatmaps from a file of IPv4 addresses.
brew install hrbrmstr/tap/kev-push     # Be notified whenever CISA updates their Known Exploited Vulnerabilities (KEV) Catalog.
brew install hrbrmstr/tap/mepower      # Scrape CMP outage information to JSON.
brew install hrbrmstr/tap/ohq2quarto   # Save an Observable HQ Notebook to a Quarto project.
brew install hrbrmstr/tap/sl2json      # Standalone program to convert Lowrance SL2 files to ndjson.
brew install hrbrmstr/tap/weatherflow  # Basic WeatherFlow Tempest command line UDP receiver in Rust.
brew install hrbrmstr/tap/weatherkit   # Command line Apple WeatherKit REST API weather conditions and hourly/daily foreacast utility
```

