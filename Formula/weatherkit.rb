class Weatherkit < Formula
  desc "weatherkit — Command line Apple WeatherKit REST API weather conditions and hourly/daily foreacast utility."
  homepage "https://github.com/hrbrmstr/weatherkit-rust"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/weatherkit-rust/releases/download/v0.3.0/weatherkit-0.3.0.zip"
    sha256 "ab17706a5bb04d04315d6aff4464bdebb548b635ac75cbe4b71825df424fb5f5"
  end

  conflicts_with "weatherkit"

  def install
    bin.install "weatherkit"
  end

  test do
    system "#{bin}/weatherkit --version"
  end
end