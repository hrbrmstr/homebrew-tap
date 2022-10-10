class Mepower < Formula
  desc "mepower — Scrape CMP outage information to JSON."
  homepage "https://github.com/hrbrmstr/mepower"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/hrbrmstr/mepower/releases/download/v0.1.0/mepower-0.1.0-macos-universal-signed.zip"
    sha256 "e184a287da8da0cf1b74e1f6e3493f206646c31bb9e8fdd045709893e9bcf780"
  end

  conflicts_with "mepower"

  def install
    bin.install "mepower"
  end

  test do
    system "#{bin}/mepower --help"
  end
end