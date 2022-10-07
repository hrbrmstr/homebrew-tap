class Weatherkit < Formula
  desc "weatherkit — Command line Apple WeatherKit REST API weather conditions and hourly/daily foreacast utility."
  homepage "https://github.com/hrbrmstr/weatherkit-rust"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/weatherkit-rust/releases/download/v0.3.0/weatherkit-0.3.0.zip"
    sha256 "ec32b2f52060411e18965702a7257f8fad83410d59b35dba30062a03c3867230"
  end

  conflicts_with "weatherkit"

  def install
    bin.install "weatherkit"
  end

  test do
    system "#{bin}/weatherkit --version"
  end
end