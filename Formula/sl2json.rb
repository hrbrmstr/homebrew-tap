class Sl2json < Formula
  desc "sl2json — Command line Apple WeatherKit REST API weather conditions and hourly/daily foreacast utility."
  homepage "https://github.com/hrbrmstr/sl2json"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/sl2json/releases/download/v0.1.0/sl2json-macos-universal-signed-0.1.0.zip"
    sha256 "ec32b2f52060411e18965702a7257f8fad83410d59b35dba30062a03c3867230"
  end

  conflicts_with "sl2json"

  def install
    bin.install "sl2json"
  end

  test do
    system "#{bin}/sl2json"
  end
end